=begin
  Problem: Given an array of integers, determine if there exists a subarray with a sum equal to a given target k.

  Solution:
    Use prefix sum to track cumulative sums. For array arr, compute prefix sum at each index.
    Store prefix sums in a hash map with their frequencies.
    For each prefix sum curr, check if curr - k exists in the hash map.
    If it does, a subarray with sum k exists.

  Example:
  * Input: arr = [4, 2, 0, 1, 6], k = 3
  * Prefix sums: [0, 4, 6, 6, 7, 13]
  * Hash map: {0:0, 4:1, 6:2, 7:4, 13:5}
  * At index 4, curr = 7, check 7 - 3 = 4 (exists in hash map). Subarray [2, 0, 1] sums to 3.

  Output: [1, 3]
=end

require_relative 'prefix_sum'

class SubarraySum
  class << self
    def find(arr, k)
      return nil if arr.nil? || arr.empty?

      prefix_sum = PrefixSum.calculate(arr)
      si = sum_indexes(prefix_sum)

      prefix_sum.each_with_index do |sum, index|
        x = sum - k
        if si.include?(x)
          return [si[x], si[sum] - 1] 
        end
      end
    end

    private

    def sum_indexes(prefix_sum)
      hsh = {}

      prefix_sum.each_with_index do |sum, index|
        unless hsh.include? sum
          hsh[sum] = index
        end
      end

      hsh
    end
  end
end

