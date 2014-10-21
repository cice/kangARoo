# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "kangaroo/version"

Gem::Specification.new do |s|
  s.name        = "kangaroo"
  s.version     = Kangaroo::VERSION
  s.platform    = Gem::Platform::RUBY
  s.date        = Time.now.strftime("%Y-%m-%d")
  s.authors     = ["Michael Eickenberg", "Marian Theisen"]
  s.email       = 'marian@cice-online.net'
  s.summary     = "Kang! ActiveRecord-ish OpenObject"
  s.homepage    = "http://github.com/kayoom/kangaroo"
  s.description = "ActiveRecord-ish OpenObject Wrapper"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency "rapuncel", "~> 0.0.6.RC2"
  s.add_dependency "activemodel", ">= 3.0.0"
  s.add_dependency "activesupport", ">= 3.0.0"
  s.add_dependency "hirb"
  s.add_dependency "highline"
  s.add_dependency "ruby-graphviz", ">= 1.0.0"

  s.add_development_dependency "yard"
  s.add_development_dependency "rspec"
  s.add_development_dependency "bundler"
end