# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "deck/version"

Gem::Specification.new do |s|
  s.name        = "deck"
  s.version     = Deck::VERSION
  s.authors     = ["paul"]
  s.email       = ["paul@dryule.com"]
  s.homepage    = ""
  s.summary     = %q{a human readable class for a deck of cards}
  s.description = %q{represent playing cards, hands, decks and games}

  s.rubyforge_project = "deck"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
