require 'minitest/autorun'
require 'minitest/reporters' # optional
require './ex1'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class LengthsTest < MiniTest::Test

  def test_empty_array
    assert_equal [], lengths([])    
  end

  def test_example_from_question
    test_arr = %w{hello what is up dude}
    assert_equal [5,4,2,2,4], lengths(test_arr)
  end

end

