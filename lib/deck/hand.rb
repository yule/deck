

class Hand < Deck
  
  def initialize(options = {})
    @cards = []
  end
  
  def inspect
    @cards.each{|e| e.to_s}
  end  
  
end