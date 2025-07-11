# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(a)
  largest = a.max(3)
  smallest = a.min(2)

  [
    largest[0] * largest[1] * largest[2],
    smallest[0] * smallest[1] * largest[0]
  ].max
end

