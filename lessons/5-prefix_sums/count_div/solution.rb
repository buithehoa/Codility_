# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(a, b, k)
  # Implement your solution here
  a_div = a / k
  b_div = b / k

  count = b_div - a_div + 1
  count
end

