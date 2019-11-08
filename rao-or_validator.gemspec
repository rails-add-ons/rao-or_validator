$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "rao/or_validator/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rao-or_validator"
  s.version     = Rao::OrValidator::VERSION
  s.authors     = ["Roberto Vasquez Angel"]
  s.email       = ["roberto@vasquez-angel.de"]
  s.homepage    = "https://github.com/robotex82/rao-or_validator"
  s.summary     = "Provides an (x)or validator for active model."
  s.description = "Provides an (x)or validator for active model."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "README.md"]
  # s.test_files = Dir["test/**/*"]

  s.add_dependency "rails"
end
