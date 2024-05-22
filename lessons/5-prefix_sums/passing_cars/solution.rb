# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(a)
  # Implement your solution here
  east_count = 0
  passing_cars = 0

  a.each do |car|
    if car == 0
      east_count += 1
    else
      passing_cars += east_count
      return -1 if passing_cars > 1_000_000_000
    end
  end

  passing_cars
end

