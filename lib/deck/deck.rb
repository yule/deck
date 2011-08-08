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
    Deck::SUITS.each{|s|
      Deck::RANKS.each{|r|
        self << Card.new(r,s)
      }
    }
    
    
    
    if options[:jokers]
      self << Card.new
      self << Card.new
    end  
    
  end
  
  def shuffle!
    1000.times { @cards.push @cards.delete_at(rand(size-1)) }
  end  
  
  def inspect
    to_s  
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
  
  alias :length :size
  
  def draw
    cards.shift
  end  
  
  

end

