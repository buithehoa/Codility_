require 'minitest/autorun'
require 'minitest/pride'
require_relative 'range_sum_query'

describe 'calculate_prefix_sum' do
  it 'calculates the prefix sum of the input array' do
    input = [2, 4, 1, 6, 3, 5]
    expected = [0, 2, 6, 7, 13, 16, 21]

    _(calculate_prefix_sum input).must_equal expected
  end
end

describe 'query_range_sum' do
  it 'calculates the range sum' do
    arr = [2, 4, 1, 6, 3, 5]

    _(query_range_sum arr, 1, 3).must_equal 11
    _(query_range_sum arr, 0, 2).must_equal 7
    _(query_range_sum arr, 3, 5).must_equal 14
  end
end

