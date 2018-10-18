# frozen_string_literal: true

lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "houzz/version"

Gem::Specification.new do |gem|
  gem.authors       = ["Mateus Resende"]
  gem.email         = ["mateus.rsnd@gmail.com"]
  gem.description   = "A friendly Ruby interface to the Houzz API"
  gem.summary       = "Provides a friendly ruby-like wrapper for the Houzz API"
  gem.homepage      = "http://github.com/mateus-resende/houzz"

  gem.files         = `git ls-files -z`.split("\x0")
  gem.executables   = gem.files.grep(%r{^exe/}).map { |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "houzz"
  gem.require_paths = ["lib"]
  gem.version       = Houzz::VERSION
  gem.license       = "MIT"

  gem.required_rubygems_version = Gem::Requirement.new(">= 0")
  gem.rubygems_version = ">= 2.1"

  gem.add_development_dependency "pry-byebug"
  gem.add_development_dependency "rspec"
  gem.add_development_dependency "rubocop"
  gem.add_development_dependency "rubocop-rspec"
end
