gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/character_map'
require './lib/key_generator'

class KeyGeneratorTest < Minitest::Test
  def test_it_exists
  	key_generator = KeyGenerator.new
  	assert_instance_of key_generator
  end

  def test_it_initializes_with_correct_array_values
	  key_generator = KeyGenerator.new
	  assert_equal [0,1,2,3,4,5,6,7,8,9], key_generator.numbers
  end

  def test_it_generates_five_digit_key_array
  	key_generator = KeyGenerator.new
  	key_generator.generate_key([0,1,2,3,4,5,6,7,8,9])
  	assert_equal 5, generated_key.length
  end

end