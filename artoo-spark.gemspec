# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "artoo-spark/version"

Gem::Specification.new do |s|
  s.name        = "artoo-spark"
  s.version     = Artoo::Spark::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Ron Evans"]
  s.email       = ["artoo@hybridgroup.com"]
  s.homepage    = "https://github.com/hybridgroup/artoo-spark"
  s.summary     = %q{Artoo adaptor for Spark}
  s.description = %q{Artoo adaptor for Spark}
  s.license     = 'Apache 2.0'

  s.rubyforge_project = "artoo-spark"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency 'artoo', '>= 1.4.1'
  s.add_runtime_dependency 'http'
  s.add_development_dependency 'minitest', '>= 5.0'
  s.add_development_dependency 'minitest-happy'
  s.add_development_dependency 'mocha', '>= 0.14.0'
end
