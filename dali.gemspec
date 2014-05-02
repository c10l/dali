lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vagrant-butcher/version'

Gem::Specification.new do |gem|
  gem.name    = 'dali'
  gem.version = Dali::VERSION

  gem.author  = "Cassiano Leal"
  gem.email   = 'cassianoleal@gmail.com'
  gem.license = 'apache2'

  # gem.homepage    = 'http://github.com/cassianoleal/dali'
  gem.summary     = "Tail logstash TCP output"
  gem.description = <<-EOM
    Dali is a command-line utility that taps to a Logstash TCP output and prints
    formatted log lines to the console.

    Originally I was going to call it tailstash as it is a tool that tails
    logstash's output. Instead, it's named after the famous Spanish painter
    because of his infamous tail-looking moustache.
  EOM

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = [ 'lib' ]
end
