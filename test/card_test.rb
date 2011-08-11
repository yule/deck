require 'helper'


class CardTest < Test::Unit::TestCase
  
  def test_card_object_initializes
    assert_instance_of Card, Card.new("Ace","Spades") 
  end
  
  def test_should_initialize_with_number
    assert_instance_of Card, Card.new(2,"Spades")
  end  

  def test_should_have_correct_rank_word
    card = Card.new("Ace","Spades")
    assert_equal "Ace", card.rank
  end
  
  def test_should_have_correct_rank_number
    card = Card.new(2,"Spades")
    assert_equal "2", card.rank
  end  
  
  def test_should_have_correct_suit
    card = Card.new(8,"Hearts")
    assert_equal "Hearts", card.suit 
  end
  
  def test_should_have_correct_suit_non_case
    card = Card.new(8,"hEaRts")
    assert_equal "Hearts", card.suit 
  end  
  
  def test_persists_ok
    card = Card.new("Jack","Clubs")
    card_2 = Card.new("King","Hearts")
    assert_equal "Jack", card.rank
  end  
  
  def test_should_get_good_to_s
    card = Card.new(10,"Clubs")
    assert_equal "10 of Clubs", card.to_s
  end  
  
  def test_should_compare_ok
    card = Card.new("Queen","Clubs")
    card2 = Card.new("Jack", "Clubs")
    assert card2 < card
    assert card > card2
  end  
  
  def test_can_increase_card
    card = Card.new(10, "h")
    card+= 1
    assert_equal "Jack of Hearts", card.to_s
  end  
  
  

end
