# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(a)
  # write your code in Ruby 2.2
  sorted = a.sort
  n = a.size + 1

  return 1 if n == 1
  (1..n).each_with_index do |value, index|
    return value if sorted[index] != value
  end
end
