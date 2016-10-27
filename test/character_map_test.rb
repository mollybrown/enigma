gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/character_map'
require 'pry'

class CharacterMapTest < Minitest::Test
  def test_it_exists
  	character_map = CharacterMap.new
  	assert_instance_of character_map
  end

  def test_it_gets_correct_value_for_given_key
	  character_map = CharacterMap.new
	  assert_equal "a", character_map[1]
  end

end

