# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{waitforit}
  s.version = "0.0.1.pre1"

  s.required_rubygems_version = Gem::Requirement.new("> 1.3.1") if s.respond_to? :required_rubygems_version=
  s.authors = ["lashd"]
  s.date = %q{2011-08-21}
  s.description = %q{Tired of sleeping when something is supposed to happen? use this to waitforit instead :)}
  s.email = %q{leon_a_d@yahoo.com}
  s.executables = ["autospec", "htmldiff", "jeweler", "ldiff", "rake", "rspec"]
  s.extra_rdoc_files = [
    "README"
  ]
  s.files = [
    ".rvmrc",
    "Gemfile",
    "Gemfile.lock",
    "README",
    "Rakefile",
    "VERSION",
    "bin/autospec",
    "bin/htmldiff",
    "bin/jeweler",
    "bin/ldiff",
    "bin/rake",
    "bin/rspec",
    "lib/waitforit.rb",
    "spec/waitforit_spec.rb"
  ]
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.6.1}
  s.summary = %q{Tired of sleeping when something is supposed to happen? use this to waitforit instead :)}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<jeweler>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
    else
      s.add_dependency(%q<jeweler>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 0"])
    end
  else
    s.add_dependency(%q<jeweler>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 0"])
  end
end
