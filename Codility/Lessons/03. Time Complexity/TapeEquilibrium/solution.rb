# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(a)
  # write your code in Ruby 2.2
  min = diff(a, 1)

  (2...a.length).each do |p|
    tmp = diff(a, p)
    min = tmp if min > tmp
    break if min.zero?
  end

  min
end

def diff(a, p)
  head = 0
  for i in 0..(p - 1) do
    head += a[i]
  end

  tail = 0
  for i in p..(a.length - 1) do
    tail += a[i]
  end

  (head - tail).abs
end
