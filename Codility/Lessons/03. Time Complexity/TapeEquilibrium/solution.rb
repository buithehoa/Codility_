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
  head = a[0..(p - 1)].reduce(:+)
  tail = a[p..(a.length - 1)].reduce(:+)

  (head - tail).abs
end
