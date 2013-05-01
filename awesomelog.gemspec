# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |gem|
  gem.name          = "awesomelog"
  gem.version       = "0.0.1"
  gem.authors       = ["Miki Stanger"]
  gem.email         = ["mimaf.o.geus+al@gmail.com"]
  gem.description   = %q{Colors logger output according to level}
  gem.summary       = %q{Extension of Logger. Colorizes log output according to log level.}
  gem.homepage      = ""

  gem.files         = Dir['lib/**/*', 'Gemfile', 'README.md', 'awesomelog.gemspec']
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency('logger')
  gem.add_dependency('colorize')
end
