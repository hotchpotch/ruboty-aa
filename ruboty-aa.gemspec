# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ruboty/aa/version'

Gem::Specification.new do |spec|
  spec.name          = "ruboty-aa"
  spec.version       = Ruboty::Aa::VERSION
  spec.authors       = ["Yuichi Tateno"]
  spec.email         = ["hotchpotch@gmail.com"]
  spec.summary       = %q{A ruboty plugin for ascii art}
  spec.description   = %q{A ruboty plugin for ascii art}
  spec.homepage      = "http://github.com/hotchpotch/ruboty-aa"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "ruboty"
  spec.add_dependency "artii", ">= 2.0"
  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 10.0"
end
