# -*- encoding: utf-8 -*-
# stub: rspec-grape 0.0.4 ruby lib

Gem::Specification.new do |s|
  s.name = "rspec-grape".freeze
  s.version = "0.0.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Timothy Kovalev".freeze]
  s.date = "2016-07-19"
  s.email = ["timothy.kovalev@gmail.com".freeze]
  s.homepage = "https://github.com/ktimothy/rspec-grape".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.1.6".freeze
  s.summary = "A set of helpers, which make grape api specs shorter.".freeze

  s.installed_by_version = "3.1.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<rack-test>.freeze, ["~> 0.6"])
    s.add_runtime_dependency(%q<rspec-core>.freeze, ["~> 3.0"])
    s.add_development_dependency(%q<bundler>.freeze, ["~> 1.10"])
    s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_development_dependency(%q<rspec>.freeze, [">= 0"])
    s.add_development_dependency(%q<grape>.freeze, [">= 0"])
  else
    s.add_dependency(%q<rack-test>.freeze, ["~> 0.6"])
    s.add_dependency(%q<rspec-core>.freeze, ["~> 3.0"])
    s.add_dependency(%q<bundler>.freeze, ["~> 1.10"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_dependency(%q<rspec>.freeze, [">= 0"])
    s.add_dependency(%q<grape>.freeze, [">= 0"])
  end
end
