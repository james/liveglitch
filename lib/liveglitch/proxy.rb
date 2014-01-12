module LiveGlitch
  class HTTPProxy
    ServerPort = 9999
    ProxyPort = 8008
    def self.run(databender_path='')
      p "loading #{databender_path}"
      autoreload(:interval=>0.3, :verbose=>true) do
        require databender_path
      end
      p "Starting Proxy server"
      EventMachine.run do
        Proxy.start(:host => "localhost", :port => ProxyPort, :debug => false) do |conn|
          conn.server :srv, :host => "127.0.0.1", :port => ServerPort

          # modify / process request stream
          conn.on_data do |data|
            data
          end

          # modify / process response stream
          conn.on_response do |backend, resp|
            DataBender.bend(resp)
          end

          # termination logic
          conn.on_finish do |backend, name|
            # terminate connection (in duplex mode, you can terminate when prod is done)
            unbind if backend == :srv
          end
        end
      end
    end
  end
end