class PrefixSum
  class << self
    def calculate(arr)
      prefix_sum = Array.new(arr.length + 1, 0)

      arr.each_with_index do |value, index|
        prefix_sum[index + 1] = prefix_sum[index] + value
      end

      prefix_sum
    end
  end
end

