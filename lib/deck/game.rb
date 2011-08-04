


class Game
  
  attr_reader :deck, :hands, :number_of_hands, :number_of_cards
  
  
  def initialize(hands = 3, cards = 3)
    @deck = Deck.new
    @number_of_hands = hands
    @number_of_cards = cards
    1..@number_of_hands.to_i do |n|
      @hands << Hand.new
    end
  end  
  
  
  
  def deal(shuffle = true)
    deck.shuffle! if shuffle
    1..@hands.size do |n|
      1..@number_of_cards.to_i do |m|
        @hands[m] << deck.draw
      end  
    end  
  end
  
end  