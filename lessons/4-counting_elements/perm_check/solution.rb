# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(a)
  # write your code in Ruby 2.2
  n = a.length
  counters = Array.new n, false
  is_not_permutation = 0
  is_permutation = 1

  a.each do |value|
    return is_not_permutation if value > n
    return is_not_permutation if counters[value - 1]

    counters[value - 1] = true
  end

  is_permutation
end
