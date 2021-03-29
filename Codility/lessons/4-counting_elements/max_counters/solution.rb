# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(n, a)
  # write your code in Ruby 2.2
  counters = Array.new n, 0
  max_count = 0

  a.each_with_index do |value, index|
    count = 0

    if value >= 1 && value <= n
      count = counters[value - 1] + 1
      counters[value - 1] = count
    elsif value == n + 1
      counters = Array.new(n, max_count)
    end

    max_count = count if max_count < count
  end

  counters
end
