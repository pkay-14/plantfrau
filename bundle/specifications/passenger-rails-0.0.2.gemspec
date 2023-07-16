# -*- encoding: utf-8 -*-
# stub: passenger-rails 0.0.2 ruby lib

Gem::Specification.new do |s|
  s.name = "passenger-rails".freeze
  s.version = "0.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Brenno Costa".freeze]
  s.date = "2013-11-01"
  s.description = "passenger-rails overrides the Rack::Handler.default method to return Rack::Handler::Passenger which will cause rack (and rails) to use passenger by default.".freeze
  s.email = ["brennolncosta@gmail.com".freeze]
  s.homepage = "https://github.com/brennovich/passenger-rails".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.3".freeze)
  s.rubygems_version = "3.1.6".freeze
  s.summary = "passenger-rails is a simple gem, clone of unicorn-rails that sets the default server for rack (and rails) to passenger.".freeze

  s.installed_by_version = "3.1.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<rack>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<passenger>.freeze, [">= 0"])
  else
    s.add_dependency(%q<rack>.freeze, [">= 0"])
    s.add_dependency(%q<passenger>.freeze, [">= 0"])
  end
end
