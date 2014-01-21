# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'euler/version'

Gem::Specification.new do |spec|
  spec.name          = "euler"
  spec.version       = Euler::VERSION
  spec.authors       = ["Louise Rains"]
  spec.email         = ["lrains@berklee.edu"]
  spec.description   = %q{Contains solutions for the problems at http://projecteuler.net/problems}
  spec.summary       = %q{Project Euler Solutions}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "cucumber"
  spec.add_development_dependency "aruba"
  spec.add_development_dependency "racksh"

  spec.add_dependency "thor"
end
