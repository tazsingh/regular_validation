# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "regular_validation/version"

Gem::Specification.new do |s|
  s.name        = "regular_validation"
  s.version     = RegularValidation::VERSION
  s.authors     = ["Tasveer Singh"]
  s.email       = ["taz@zenapsis.com"]
  s.homepage    = ""
  s.summary     = "A collection of Regular Expression validations"
  s.description = ""

  s.rubyforge_project = "regular_validation"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  %w[minitest turn ffaker rake].each do |dependency|
    s.add_development_dependency dependency
  end
end
