# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'os-name/version'

Gem::Specification.new do |gem|
  gem.name          = "os-name"
  gem.version       = OS::VERSION
  gem.authors       = ["Shannon Skipper"]
  gem.email         = ["shannonskipper@gmail.com"]
  gem.description   = %q{Ruby Gem to Check OS}
  gem.summary       = %q{A minimalist Ruby gem to check the host OS.}
  gem.homepage      = "https://github.com/Havenwood/os-name"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
