# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(x, a)
  # write your code in Ruby 2.2
  map = Array.new(x + 1, 0)

  leaf_count = 0
  second = 0

  a.each_with_index do |position, index|
    second = index

    if map[position] == 0
      map[position] = 1
      leaf_count += 1
    end

    break if leaf_count == x
  end

  leaf_count < x ? -1 : second
end
