require 'minitest/autorun'
require 'minitest/pride'
require_relative 'subarray_sum'

class SubarraySumTest < Minitest::Test
  def test_empty_array
    assert_nil SubarraySum.find([], 9)
  end
  
  def test_positive_numbers
    assert_equal [1, 3], SubarraySum.find([4, 2, 0, 1, 6], 3)
  end
end
