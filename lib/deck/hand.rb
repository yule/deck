

class Hand < Deck
  
  def initialize(options = {})
    @cards = []
  end
  
  def inspect
    @cards.map{|e| e.to_s}
  end  
  
end