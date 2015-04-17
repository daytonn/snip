# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "snip/version"

Gem::Specification.new do |spec|
  spec.name          = "snip"
  spec.version       = Snip::VERSION
  spec.authors       = ["Dayton Nolan"]
  spec.email         = ["daytonn@gmail.com"]
  spec.summary       = %q{Quick CLI to generate ST3 snippets}
  spec.description   = %q{A command line interface to generate/edit your Sublime Text 3 snippets}
  spec.homepage      = "https://github.com/daytonn/snip"
  spec.license       = "Apache 2.0"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "moses", "~> 0.1"

  spec.add_development_dependency "awesome_print", "~> 1.1"
  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "byebug", "~> 3.5"
  spec.add_development_dependency "dotenv", "~> 1.0"
  spec.add_development_dependency "fuubar", "~> 2.0"
  spec.add_development_dependency "pry", "~> 0.10"
  spec.add_development_dependency "pry-awesome_print", "~> 9.6"
  spec.add_development_dependency "pry-byebug", "~> 3.0"
  spec.add_development_dependency "pry-coolline", "~> 0.2"
  spec.add_development_dependency "pry-theme", "~> 1.1"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.2"
end
