# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(a)
  # write your code in Ruby 2.2

  unpaired = 0
  sorted = a.sort
  i = 0
  loop do
    if sorted[i] == sorted[i + 1]
      i += 2
    else
      unpaired = sorted[i]
      i += 1
    end

    break if unpaired > 0 || i >= sorted.length
  end

  unpaired
end
