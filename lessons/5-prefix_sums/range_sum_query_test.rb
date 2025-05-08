require 'minitest/pride'
require_relative 'range_sum_query'

describe 'query_range_sum' do
  it 'calculates the range sum' do
    arr = [2, 4, 1, 6, 3, 5]

    _(query_range_sum arr, 1, 3).must_equal 11
    _(query_range_sum arr, 0, 2).must_equal 7
    _(query_range_sum arr, 3, 5).must_equal 14
  end
end

