require 'minitest/autorun'
require 'minitest/pride'
require './matt'

class MattTest < Minitest::Test

  def setup
    @matt = Matt.new
  end

  def test_asking_question
    assert_equal 'sure', @matt.chat('hello?')
  end

  def test_question_mark_not_at_the_end
    assert_equal 'sure', @matt.chat('hello?sdsdf ')
  end

  def test_shouting_with_matt
    assert_equal 'chill out', @matt.chat('YO')
  end

  def test_shouting
    assert_equal true, @matt.shouting?('YO')
  end

end