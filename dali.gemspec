Gem::Specification.new do |gem|
  gem.name        = 'dali'
  gem.version     = '0.0.0'
  gem.summary     = "Tail logstash TCP output"
  gem.description = <<-EOM
    Dali is a command-line utility that taps to a Logstash TCP output and prints
    formatted log lines to the console.

    Originally it was going to be called tailstash as it is a tool that tails
    logstash's output. Instead, it's named after the famous Spanish painter
    because of his infamous tail-looking moustache.
  EOM

  gem.author      = "Cassiano Leal"
  gem.email       = 'cassianoleal@gmail.com'
  gem.files       = `git ls-files`.split($/)
  gem.license     = 'apache2'
  # gem.homepage    = 'http://rubygems.org/gems/dali'
  # gem.executables = [ 'dali' ]
end
