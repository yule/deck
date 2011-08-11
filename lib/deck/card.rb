class Card

  include Enumerable
  
  attr_reader :suit, :rank
  
  def initialize(ran = 'Joker', suit = 'None')
    #TODO clean this up
    ran = "Jack" if ran == 11
    ran = "Queen" if ran == 12
    ran = "King" if ran == 13
    ran = "Ace" if ran == 14
    suit = "Hearts" if suit == "H"
    suit = "Clubs" if suit == "C"
    suit = "Spades" if suit == "S"
    suit = "Diamonds" if suit == "D"
    @suit = suit
    @rank = ran
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
  
  def + (num)
    Card.new(rank.to_i + num.to_i, suit)
  end
  
  def - (num)
    Card.new(rank.to_i - num.to_i, suit)
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

