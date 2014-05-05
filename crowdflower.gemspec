# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-
# stub: crowdflower 0.12.0 ruby lib

Gem::Specification.new do |s|
  s.name = "crowdflower"
  s.version = "0.12.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Brian P O'Rourke", "Chris Van Pelt"]
  s.date = "2014-05-05"
  s.description = "A toolkit for interacting with CrowdFlower via the REST API.\n\nThis is alpha software. Have fun!\n\n"
  s.email = "brian@crowdflower.com"
  s.extra_rdoc_files = [
    "LICENSE",
    "README.md"
  ]
  s.files = [
    ".document",
    "CONTRIBUTORS",
    "HISTORY.md",
    "LICENSE",
    "README.md",
    "Rakefile",
    "VERSION",
    "bindev/cl_skel.rb",
    "bindev/crowdflower.rb",
    "config/account_info.sample.yml",
    "crowdflower.gemspec",
    "lib/crowdflower.rb",
    "lib/crowdflower/base.rb",
    "lib/crowdflower/job.rb",
    "lib/crowdflower/judgment.rb",
    "lib/crowdflower/order.rb",
    "lib/crowdflower/unit.rb",
    "lib/crowdflower/worker.rb",
    "test/crowdshopping.csv",
    "test/integration_tests.rb"
  ]
  s.homepage = "http://github.com/dolores/ruby-crowdflower"
  s.rubygems_version = "2.2.0"
  s.summary = "a toolkit for the CrowdFlower API"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<httparty>, [">= 0.7.4"])
    else
      s.add_dependency(%q<httparty>, [">= 0.7.4"])
    end
  else
    s.add_dependency(%q<httparty>, [">= 0.7.4"])
  end
end

