# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "time-freezer/version"

Gem::Specification.new do |s|
  s.name        = "time-freezer"
  s.version     = TimeFreezer::VERSION
  s.authors     = ["Dragos"]
  s.email       = ["dragosh_mdr@yahoo.com"]
  s.homepage    = ""
  s.summary     = %q{Use this gem in your specs to test time correctly}
  s.description = %q{These gem freezes and unfreezes time to be able to correctly test in specs}

  s.rubyforge_project = "time-freezer"

  files         = []
  files += Dir.glob('lib/**/*')
  s.files = files
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
