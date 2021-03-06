# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sass/strings/version'

Gem::Specification.new do |spec|
  spec.name          = "sass-strings"
  spec.version       = Sass::Strings::VERSION
  spec.authors       = ["Seb Pollard"]
  spec.email         = ["seb.p@haygarth.co.uk"]
  spec.description   = %q{Provides helper functions for manipulating strings in Sass}
  spec.summary       = %q{Provides helper functions for manipulating strings in Sass}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
