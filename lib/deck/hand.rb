class Hand < Deck
  
  def initialize(options = {})
    @cards = []
  end
  
  def inspect
    @cards.inspect
  end  
  
end