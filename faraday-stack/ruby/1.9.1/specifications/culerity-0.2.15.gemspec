# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "culerity"
  s.version = "0.2.15"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Alexander Lang"]
  s.date = "2011-01-21"
  s.description = "Culerity integrates Cucumber and Celerity in order to test your application's full stack."
  s.email = "alex@upstream-berlin.com"
  s.executables = ["run_celerity_server.rb"]
  s.extra_rdoc_files = ["README.md"]
  s.files = ["bin/run_celerity_server.rb", "README.md"]
  s.homepage = "http://github.com/langalex/culerity"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.10"
  s.summary = "Culerity integrates Cucumber and Celerity in order to test your application's full stack."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<cucumber>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
    else
      s.add_dependency(%q<cucumber>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 0"])
    end
  else
    s.add_dependency(%q<cucumber>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 0"])
  end
end
