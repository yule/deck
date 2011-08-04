


class Game
  
  attr_reader :deck, :hands, :number_of_hands, :number_of_cards
  
  
  def initialize(p_hands = 3, p_cards = 3)
    @deck = Deck.new
    @number_of_hands = p_hands
    @number_of_cards = p_cards
    @hands = []
    @number_of_hands.to_i.times do
      @hands << Hand.new
    end
  end  
  
  def inspect
    "#{to_s} with #{@number_of_hands} hands each with #{@number_of_cards} cards"
  end  
  
  def deal(shuffle = true)
    deck.shuffle! if shuffle
    (1..hands.size).each do |n|
      number_of_cards.times do
        hands[n-1] << deck.draw
      end  
    end  
  end
  
end  