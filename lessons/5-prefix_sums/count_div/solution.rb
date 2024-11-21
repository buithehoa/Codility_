# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(a, b, k)
  # Implement your solution here
  count = 0

  div = a / k
  mod = a % k
  step = div + (mod > 0 ? 1 : 0)
  kk = k * step

  while kk <= b do
    count += 1
    kk += k
  end

  count
end

