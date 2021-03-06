# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ruboty/fire_penguin/version'

Gem::Specification.new do |spec|
  spec.name          = "ruboty-fire_penguin"
  spec.version       = Ruboty::FirePenguin::VERSION
  spec.authors       = ["high-moctane"]
  spec.email         = ["high.moctane@gmail.com"]

  spec.summary       = %q{generate burning penguin}
  spec.description   = %q{generate burning penguin}
  spec.homepage      = "https://github.com/high-moctane/"


  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_development_dependency "ruboty"
end
