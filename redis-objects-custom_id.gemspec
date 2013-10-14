# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'redis/objects/custom_id/version'

Gem::Specification.new do |spec|
  spec.name          = "redis-objects-custom_id"
  spec.version       = Redis::Objects::CustomId::VERSION
  spec.authors       = ["Ming Liu"]
  spec.email         = ["liuming@lmws.net"]
  spec.description   = %q{add ability to redis-objects gem to define customize id field}
  spec.summary       = spec.description
  spec.homepage      = "https://github.com/liuming/redis-objects-custom_id"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "redis"
  spec.add_dependency "redis-objects", "~> 0.7"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
