# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(n)
  # write your code in Ruby 2.2
  bin = n.to_s(2)
  prev = nil
  gap = 0
  max_gap = 0

  bin.each_char do |current|
    if current == '1'
      if prev == '0' && gap > 0
        if gap > max_gap
          max_gap = gap
          gap = 0
        end
      end
    end

    if current == '0'
      if prev == '1'
        gap = 1
      elsif prev == '0' && gap > 0
        gap += 1
      end
    end

    prev = current
  end

  max_gap
end
