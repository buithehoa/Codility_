def prefix_sum(arr)
  sum = Array.new(arr.length + 1, 0)

  arr.each_with_index do |value, index|
    sum[index + 1] = sum[index] + value
  end

  sum
end

def range_sum_query(

