# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(a, b, k)
  # Implement your solution here
  count = 0
  mod = 0
  previous = 0

  (a..b).each do |current|
    gap = current - previous + mod
    mod = gap % k

    if (mod == 0)
      count += 1
    end

    previous = current
  end

  count
end

