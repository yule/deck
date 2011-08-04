require 'helper'

class HandTest < Test::Unit::TestCase
  
  def test_initializes_ok
    assert_instance_of Hand, Hand.new
  end  
  
  def test_has_zero_size
    assert_equal 0, Hand.new.size
  end
  
  

end  