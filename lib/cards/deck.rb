
require 'cards'
require 'cards/card'

class Deck
  

  
  include Enumerable
  
  attr_reader :cards

  #create a new deck of cards 
  def initialize(options = {})
    defaults = {
      :jokers => false
    }
    options = defaults.merge(options)
    
    @cards = []
    52.times do |n|
      self << Card.new
    end
    
    if options[:jokers]
      self << Card.new
      self << Card.new
    end  
    
  end
  
  def each
    @cards.each { |card| yield card } 
	end
  
  def <<(card)
    @cards << card
  end  
  
  def size
    @cards.size
  end  

end

