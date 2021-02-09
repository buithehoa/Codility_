# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(a)
  # write your code in Ruby 2.2
  head = a[0]
  tail = a[1..(a.length - 1)].reduce(:+)
  min = (head - tail).abs

  (2...a.length).each do |p|
    tmp = diff(a, p, head, tail)
    min = tmp if tmp < min
    break if min.zero?
  end

  min
end

def diff(a, p, head, tail)
  new_head = head + a[p]
  new_tail = tail - a[p]

  (new_head - new_tail).abs
end
