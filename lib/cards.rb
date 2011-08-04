require "cards/version"

$: << File.dirname(__FILE__)

require 'cards/card'
require 'cards/deck'
require 'cards/hand'
require 'cards/game'
class Cards
  SUITS = %w(Spades Hearts Diamonds Clubs)
  RANKS = %w(Ace 2 3 4 5 6 7 8 9 10 Jack Queen King)
end
