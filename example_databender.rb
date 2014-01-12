module LiveGlitch
  class DataBender
  	# Here for you to copy or edit directly.
  	# Run proxy with `liveglitch proxy path_to_this_file`
    def self.bend(resp)
      resp = resp.gsub("\x9C".force_encoding("ASCII-8BIT"), "\x9C".force_encoding("ASCII-8BIT"))
      resp
    end
  end
end