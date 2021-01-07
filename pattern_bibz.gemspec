$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "pattern_bibz/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "pattern_bibz"
  spec.version     = PatternBibz::VERSION
  spec.authors     = ["Thomas HUMMEL"]
  spec.email       = ["thomas@hummel.link"]
  spec.homepage    = "http://thooams.github.io/pattern_bibz"
  spec.summary     = "Rails Pattern generator"
  spec.description = "Generate your pattern files through this generator: Eq. rails g pattern MyCustomDecorator"
  spec.license     = "MIT"
  spec.required_ruby_version = '>= 3.0.0'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_development_dependency "rails", "~> 6.0.2", ">= 6.0.2.2"
  spec.add_development_dependency "sqlite3"
  spec.add_development_dependency 'overcommit'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'rubocop-ast'
  spec.add_development_dependency 'rubocop-minitest'
  spec.add_development_dependency 'rubocop-performance'
  spec.add_development_dependency 'rubocop-rails'
  spec.add_development_dependency 'simplecov'
end
