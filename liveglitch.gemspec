Gem::Specification.new do |s|
  s.name = %q{liveglitch}
  s.version = "0.0.1"
  s.date = '2014-01-12'
  s.summary = "A ruby library to regurgitate MOO products"
  s.description = "A proxy server in ruby for live glitching http media streams"
  s.authors = ["James Darling"]
  s.email = "james@abscond.org"
  s.files = %w(lib/liveglitch.rb lib/liveglitch/databender.rb lib/liveglitch/proxy.rb lib/liveglitch/utils.rb README.markdown)
  s.homepage = "https://github.com/james/liveglitch"
  s.executables << 'liveglitch'
  s.has_rdoc = false
  s.required_ruby_version = Gem::Requirement.new("> 2.0")
  s.test_files = []

  s.add_dependency("em-proxy")
  s.add_dependency("autoreload")
  s.license       = 'MIT'
end