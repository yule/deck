require 'test/unit'
require 'cards'

class DeckTest < Test::Unit::TestCase
  
  def test_deck_object_initializes
    assert_instance_of Deck, Deck.new 
  end

  def test_deck_size_is_correct
    assert_equal 52, Deck.new.size
  end
	
  def test_deck_containes_card_objects
    assert_instance_of Card, Deck.new.first
  end
  
  def test_can_create_deck_with_jokers
    assert_equal 54, Deck.new(:jokers=>true).size
  end
  
  def test_draw_first_is_ace_of_spades
    deck = Deck.new
    card = deck.draw
    assert_equal "Ace of Spades", card.to_s
    assert_equal 51, deck.size 
  end  
  
  #not ideal
  def test_draw_first_after_shuffle_different
    deck = Deck.new
    deck_2 = Deck.new
    deck.shuffle!
    deck_2.shuffle!
    assert_not_equal deck_2.draw, deck.draw
    assert_equal 51, deck.size
    assert_equal 51, deck_2.size
  end  
  


end
