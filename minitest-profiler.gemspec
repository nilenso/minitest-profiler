# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'minitest/profiler/version'

Gem::Specification.new do |spec|
  spec.name          = "minitest-profiler"
  spec.version       = Minitest::Profiler::VERSION
  spec.authors       = ["Timothy Andrew", "Asif Kalam"]
  spec.email         = ["mail@timothyandrew.net", "asif@asifskalam.com"]
  spec.summary       = %q{Hooks into minitest and finds the slow-running tests.}
  spec.description   = %q{}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
