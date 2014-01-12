module LiveGlitch
  class DataBender
    def self.bend(resp)
      p "bend"
      resp = resp.gsub("\x9B".force_encoding("ASCII-8BIT"), "\x9A".force_encoding("ASCII-8BIT"))
      p resp
      resp
    end
  end
end