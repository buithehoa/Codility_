# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(x, y, d)
  # write your code in Ruby 2.2
  steps = 0

  loop do
    location = x + d * steps
    break if location >= y
    steps += 1
  end

  steps
end
