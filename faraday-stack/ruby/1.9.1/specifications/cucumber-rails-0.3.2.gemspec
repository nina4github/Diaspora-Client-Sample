# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "cucumber-rails"
  s.version = "0.3.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Dennis Bl\u{c3}\u{b6}te", "Aslak Helles\u{c3}\u{b8}y", "Rob Holland"]
  s.date = "2010-06-06"
  s.description = "Cucumber Generators and Runtime for Rails"
  s.email = "cukes@googlegroups.com"
  s.extra_rdoc_files = ["LICENSE", "README.rdoc"]
  s.files = ["LICENSE", "README.rdoc"]
  s.homepage = "http://github.com/aslakhellesoy/cucumber-rails"
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.10"
  s.summary = "Cucumber Generators and Runtime for Rails"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<cucumber>, [">= 0.8.0"])
      s.add_development_dependency(%q<aruba>, [">= 0.1.9"])
    else
      s.add_dependency(%q<cucumber>, [">= 0.8.0"])
      s.add_dependency(%q<aruba>, [">= 0.1.9"])
    end
  else
    s.add_dependency(%q<cucumber>, [">= 0.8.0"])
    s.add_dependency(%q<aruba>, [">= 0.1.9"])
  end
end
