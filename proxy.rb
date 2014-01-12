require 'em-proxy'
require './databender.rb'
require 'byebug'
module LiveGlitch
  class HTTPProxy

    def self.run
      EventMachine.run do
        Proxy.start(:host => "localhost", :port => 8008, :debug => true) do |conn|
          conn.server :srv, :host => "127.0.0.1", :port => 9999

          # modify / process request stream
          conn.on_data do |data|
            p "data"
            data
          end

          # modify / process response stream
          conn.on_response do |backend, resp|
            p "response"
            DataBender.bend(resp)
          end

          # termination logic
          conn.on_finish do |backend, name|
            # terminate connection (in duplex mode, you can terminate when prod is done)
            p "finish"
            unbind if backend == :srv
          end
        end
      end
    end

  end
end