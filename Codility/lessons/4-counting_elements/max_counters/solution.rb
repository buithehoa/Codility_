# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(n, a)
  # write your code in Ruby 2.2
  counters = Array.new n, 0
  max_count = 0
  next_max_count = 0
  max_operation = n + 1

  a.each_with_index do |value, index|
    count = 0

    if value >= 1 && value <= n
      count = counters[value - 1] <= max_count ? max_count + 1 : counters[value - 1] + 1
      counters[value - 1] = count
      next_max_count = count if max_count < count
    elsif value == max_operation
      max_count = next_max_count
    end

  end

  counters = counters.collect { |counter| counter < max_count ? max_count : counter }

  counters
end
