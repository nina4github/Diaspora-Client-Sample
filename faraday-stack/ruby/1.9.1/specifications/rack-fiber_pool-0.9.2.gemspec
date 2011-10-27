# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "rack-fiber_pool"
  s.version = "0.9.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Mike Perham"]
  s.date = "2011-08-24"
  s.description = "Rack middleware to run each request within a Fiber"
  s.email = "mperham@gmail.com"
  s.homepage = "http://github.com/mperham/rack-fiber_pool"
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.10"
  s.summary = "Rack middleware to run each request within a Fiber"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
