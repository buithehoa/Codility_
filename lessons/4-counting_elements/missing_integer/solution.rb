# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(a)
  # write your code in Ruby 2.2
  a.sort!
  missing = 1

  a.each do |value|
    if missing == value
      missing += 1
    elsif missing < value
      break
    end
  end

  missing
end
