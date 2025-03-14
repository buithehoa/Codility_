# Calculate the prefix sum array for the given input array
def calculate_prefix_sum(arr)
  n = arr.length
  prefix_sum = Array.new(n + 1, 0)
  
  (1..n).each do |i|
    prefix_sum[i] = prefix_sum[i-1] + arr[i-1]
  end
  
  prefix_sum
end

# Find the number of contiguous subarrays that sum to the target
def subarray_sum(arr, target)
  puts "arr #{arr}"

  prefix_sum = calculate_prefix_sum(arr)
  puts "prefix_sum #{prefix_sum}"
  puts
  
  count = 0
  sum_map = {0 => 1}  # Initialize with 0 sum
  puts "step 0"
  puts "sum_map #{sum_map}"
  puts
  
  (1...prefix_sum.length).each do |i|
    puts "step #{i}"
  
    complement = prefix_sum[i] - target
    puts "prefix_sum[#{i}] #{prefix_sum[i]}, target #{target}, complement #{complement}"
    
    count += sum_map[complement] if sum_map.key?(complement)
    puts "count #{count}"
    
    sum_map[prefix_sum[i]] = (sum_map[prefix_sum[i]] || 0) + 1
    
    puts "sum_map #{sum_map}"
    puts
  end
  
  count
end

# Example usage
arr = [1, 2, 3]
target = 3
result = subarray_sum(arr, target)
puts "result: #{result}"  # Output: 2

