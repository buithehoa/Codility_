# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(a)
  a.sort!

  max1 = a[-1] * a[-2] * a[-3]
  max2 = a[0] * a[1] * a[2]

  return max1 > max2 ? max1 : max2
end

