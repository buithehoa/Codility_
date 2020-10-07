# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(x, y, d)
  # write your code in Ruby 2.2
  jumps, distance  = (y - x).divmod(d)
  if distance > 0
    jumps += 1
  end

  jumps
end
