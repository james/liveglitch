module LiveGlitch
  class Utils
  	VLC = "/Applications/VLC.app/Contents/MacOS/VLC"
  	def self.serve_file(file_path)
  		`#{VLC} #{file_path} --sout "#standard{mux=ts,access=http,dst=localhost:9999}"`
  	end

    def self.play_stream()
      `#{VLC} --http-proxy="http://localhost:8008" http://localhost:9999`
    end
  end
end