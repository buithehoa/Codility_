# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(a)
  # Implement your solution here
  a.sort!

  count = 0
  current = nil
  a.each do |aa|
    unless aa == current
      count += 1
      current = aa
    end
  end

  count
end

