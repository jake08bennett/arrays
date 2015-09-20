require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative 'arrays'

class ArraysTest < MiniTest::Test
	def setup
		@m = Class.new do
     include Arrays
   	end.new
	end

	def test_middles
		assert_equal [4, 2], @m.middles([22, 4, 9], [3, 2, 33])
		assert_equal [7855, 2], @m.middles([2, 7855, 53], [0, 2, 66])
	end

	def test_max
		assert_equal 43, @m.max([43, 5, 21, 12, 7])
		assert_equal 105, @m.max([105, 12, 17, 21])
	end
	
	def test_lucky13?
		assert_equal true, @m.lucky13?([2, 0, 4, 28, 6])
		assert_equal false, @m.lucky13?([1, 4, 8,])
		assert_equal false, @m.lucky13?([3, 6, 5,])
		assert_equal false, @m.lucky13?([3, 2, 1])
	end
	
	def test_repeat_separator
		assert_equal "JakeBanterJake", @m.repeat_separator("Jake", "Banter", 2)
		assert_equal "heyAndheyAndhey", @m.repeat_separator("hey", "And", 3)
	end

	def test_same_ends?
		assert_equal true, @m.same_ends?([3, 4, 5, 6, 3, 4], 2)
		assert_equal true, @m.same_ends?([1, 2, 2, 3, 4], 0)
		assert_equal false, @m.same_ends?([2, 3, 4, 5, 1, 2], 3)
	end

	def test_starry
		assert_equal true, @m.starry("saa*Abs")
		assert_equal false, @m.starry("saa*bas")
	end
end
