require 'minitest/autorun'
require 'minitest/pride'
require_relative 'prefix_sum' # Adjust path if needed

class PrefixSumTest < Minitest::Test
  def test_empty_array
    assert_equal [], PrefixSum.calculate([])
  end
  
  def test_single_element
    assert_equal [0, 5], PrefixSum.calculate([5])
  end
  
  def test_positive_numbers
    assert_equal [0, 1, 3, 6, 10], PrefixSum.calculate([1, 2, 3, 4])
  end
  
  def test_negative_numbers
    assert_equal [0, -3, -5, -10], PrefixSum.calculate([-3, -2, -5])
  end
  
  def test_mixed_numbers
    assert_equal [0, -5, -2, 1, -4], PrefixSum.calculate([-5, 3, 3, -5])
  end
  
  def test_with_zeros
    assert_equal [0, 0, 0, 5, 5], PrefixSum.calculate([0, 0, 5, 0])
  end
  
  def test_large_array
    large_array = Array.new(1000) { rand(-100..100) }
    result = PrefixSum.calculate(large_array)
    
    assert_equal 1001, result.length
    assert_equal 0, result[0]
    
    # Verify the prefix sum calculation manually
    expected_sum = 0
    large_array.each_with_index do |value, index|
      expected_sum += value
      assert_equal expected_sum, result[index + 1]
    end
  end
  
  def test_floating_point_numbers
    float_array = [1.5, 2.5, 3.5]
    expected = [0, 1.5, 4.0, 7.5]
    
    result = PrefixSum.calculate(float_array)
    
    # Compare with delta for floating point precision
    expected.each_with_index do |value, index|
      assert_in_delta value, result[index], 0.0001
    end
  end
end

