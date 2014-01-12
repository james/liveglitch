module LiveGlitch
  class DataBender
    def self.bend(resp)
      # p "*************************BEND****************"
      # resp = resp.gsub("\x9C".force_encoding("ASCII-8BIT"), "\x9C".force_encoding("ASCII-8BIT"))
      # p resp
      resp# + resp + resp
    end
  end
end