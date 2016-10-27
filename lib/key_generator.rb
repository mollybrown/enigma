class KeyGenerator

	attr_reader :numbers

	def initialize
		@numbers = (0..9).to_a
	end

	def generate_key(numbers_array)
		generated_key = numbers_array.sample(5)
	end

end