require 'test/unit'
require 'deck'

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


end
