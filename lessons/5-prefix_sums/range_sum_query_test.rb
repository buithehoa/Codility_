require 'minitest/autorun'
require 'minitest/pride'
require_relative 'range_sum_query'

describe 'prefix_sum' do
  it 'calculates the prefix sum of the input array' do
    input = [2, 4, 1, 6, 3, 5]
    expected = [0, 2, 6, 7, 13, 16, 21]

    _(prefix_sum input).must_equal expected
  end
end


