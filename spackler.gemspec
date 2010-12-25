# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "spackler/version"

Gem::Specification.new do |s|
  s.add_development_dependency %q<nokogiri>, [">= 1.3"]
  
  s.name        = "spackler"
  s.version     = Spackler::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Mark Holton (RedGrind, LLC)"]
  s.email       = ["holtonma@gmail.com"]
  s.homepage    = "https://github.com/holtonma/spackler"
  s.summary     = %q{Obtain all data from PGA Tour, European Tour, and Majors in a friendly
                     output format}
  s.description = <<-EOF
    'The spackler gem enables you to very easily obtain data on all golf 
    tournament scores throughout the web.  See README for more details'
  EOF
  
  s.rubyforge_project = "spackler"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
