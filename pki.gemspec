# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pki/version'

Gem::Specification.new do |spec|
  spec.name          = "pki"
  spec.version       = PKI::VERSION
  spec.authors       = ["Martin Englund"]
  spec.email         = ["martin@englund.nu"]
  spec.description   = %q{Public Key Infrastructure}
  spec.summary       = %q{Public Key Infrastructure}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
