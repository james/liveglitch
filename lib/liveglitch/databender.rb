module LiveGlitch
  class DataBender
  	# Default bend method that doesn't do anything.
  	# To be overwritten by user
    def self.bend(resp)
      resp
    end
  end
end