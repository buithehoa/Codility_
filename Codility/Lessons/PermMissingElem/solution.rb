# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(a)
  # write your code in Ruby 2.2
  i = 1
  a.sort.each do |e|
    return i if e != i
    i += 1
  end
end
