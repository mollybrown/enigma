gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/offset_calculator'
require './lib/key_generator'

class OffsetCalculatorTest < Minitest::Test
  def test_it_exists
  	offset_calculator = OffsetCalculator.new
  	assert_instance_of offset_calculator
  end

  def test_it_gets_key
	  offset_calculator = OffsetCalculator.new
    key_generator = KeyGenerator.new
    key_generator.generate_key
	  assert_equal generated_key, offset_calculator.get_key
  end

  def test_it_gets_date
  	offset_calculator = OffsetCalculator.new
  	assert_equal "102616", offset_calculator.get_time
  end

  def test_it_generates_offset_key
    offset_calculator = OffsetCalculator.new
    assert_equal [7,0,5,6], offset_calculator.generate_offset_key(102616)
  end
end