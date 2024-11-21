# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(a, b, k)
  # Implement your solution here
  a_div = (a / k) - (a % k == 0 ? 1 : 0)

  b_div = b / k

  count = b_div - a_div
  count
end

