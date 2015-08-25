# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'smsapi/version'

Gem::Specification.new do |spec|
  spec.name          = "smsapi"
  spec.version       = SMSAPI::VERSION
  spec.authors       = ["Michael Oblak"]
  spec.email         = ["oblak.michal@gmail.com"]
  spec.description   = "SMSAPI.pl ruby wrapper"

  spec.summary       = "SMSAPI.pl ruby wrapper"
  spec.homepage      = "https://github.com/jb41/smsapi-ruby"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_dependency "net", '~> 0'
end
