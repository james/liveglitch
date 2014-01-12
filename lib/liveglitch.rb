require 'autoreload'
require 'em-proxy'
require 'byebug'

$:.unshift(File.dirname(__FILE__) + '/../lib')

require 'liveglitch/proxy'
module LiveGlitch

end

autoreload(:interval=>2, :verbose=>true) do
    require 'liveglitch/databender.rb' 
end