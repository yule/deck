require "deck/version"

$: << File.dirname(__FILE__)

require 'deck/card'

class Deck
	attr_reader :cards
	#create a new deck of cards 
	def initialize
		@cards = [Card.new]
	end
end
