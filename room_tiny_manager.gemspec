# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'room_tiny_manager/version'

Gem::Specification.new do |spec|
  spec.name          = "room_tiny_manager"
  spec.version       = RoomTinyManager::VERSION
  spec.authors       = ["Long Nguyen"]
  spec.email         = ["long.polyglot@gmail.com"]
  spec.summary       = %q{A rubygem to get list of available rooms from roomorama.}
  spec.description   = %q{A rubygem to get list of available rooms from roomorama.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rspec", "~> 2.14.1"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "pry"

  spec.add_dependency 'rest-client', '~> 1.7.2'
end
