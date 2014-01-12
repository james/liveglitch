VLC = "/Applications/VLC.app/Contents/MacOS/VLC"

require './proxy.rb'
# proxy = fork do
  LiveGlitch::HTTPProxy.run
# end
# vlc_server = fork do
#   `#{VLC} rudimental.avi --sout "#standard{mux=ts,access=http,dst=localhost:9999/test}"`
# end
# player = fork do
#   `#{VLC} --http-proxy="http://localhost:8008" http://localhost:9999/test`
# end