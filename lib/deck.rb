
$: << File.dirname(__FILE__)

require "deck/version"
require 'deck/card'
require 'deck/deck'
require 'deck/hand'
require 'deck/game'
class Deck
  SUITS = %w(Spades Hearts Diamonds Clubs)
  RANKS = %w(Ace 2 3 4 5 6 7 8 9 10 Jack Queen King)
end
