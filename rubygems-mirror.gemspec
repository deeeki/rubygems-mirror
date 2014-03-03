# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rubygems/mirror/version'

Gem::Specification.new do |spec|
  spec.name          = "rubygems-mirror"
  spec.version       = Gem::Mirror::VERSION
  spec.authors       = ["raggi"]
  spec.email         = ["raggi@rubyforge.org"]
  spec.summary       = %q{The `gem mirror` RubyGems command, creates local mirrors of all gems from a remote gem source.}
  spec.description   = %q{This is an update to the old `gem mirror` command. It uses net/http/persistent and threads to grab the mirror set a little faster than the original. Eventually it will replace `gem mirror` completely. Right now the API is not completely stable (it will change several times before release), however, I will maintain stability in master.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "net-http-persistent", ">= 2.1"
  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
