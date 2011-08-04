

class Card

  include Enumerable
  
  attr_reader :suit, :rank
  
  def initialize(rank = 'Joker', suit = 'None')
    @suit = suit
    @rank = rank
  end
  
  
  def rank
    case @rank.to_s.upcase[0..1]      
      when 'JA' "Jack"
      when 'QU' "Queen"
      when 'KI' "King"
      when 'AC' "Ace"  
      when 'JO' "Joker"  
      else @rank.to_s  
    end  
  end
  
  def inspect
    to_s
  end  
  
  def suit
    @suit.capitalize
  end  
  
  def to_s
    "#{rank} of #{suit}"
  end  
  
  def ==(other)
    to_i == other.to_i && suit == other.suit
  end  
  
  def <=>(other)
    to_i<=>other.to_i
  end  
  
  def <(other)
    to_i<other.to_i
  end 
  
  def >(other)
    to_i>other.to_i
  end  
  
  def each
    yield
  end  
  
  def to_i
    case @rank.to_s.upcase[0..1]      
      when 'JA'
        11
      when 'QU' 
        12
      when 'KI' 
        13
      when 'AC' 
        14
      when 'JO' 
        15
      else @rank.to_i  
    end  
  end  
  
end

