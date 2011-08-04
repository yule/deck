require 'helper'

class GameTest < Test::Unit::TestCase
  
  def test_initializes_ok
    assert_instance_of Game, Game.new
  end  
  
  
  def deals_ok
    game = Game.new(10,5)
    assert_equal 10, game.hands.size
    
    (1..10).each do |n|
      assert_equal 5, game.hands[n].size
    end
    
    assert_equal 2, game.deck.size
  end  
  
end