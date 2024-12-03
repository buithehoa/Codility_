# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(s, p, q)
  impact_factors = {
    'A' => 1,
    'C' => 2,
    'G' => 3,
    'T' => 4
  }

  answers = Array.new(p.length)
  dna = s.chars

  # Implement your solution here
  (0...p.length).each do |m|
    query = dna[p[m]..q[m]]

    answers[m] =  if query.include?('A')
                    impact_factors['A']
                  elsif query.include?('C')
                    impact_factors['C']
                  elsif query.include?('G')
                    impact_factors['G']
                  else 
                    impact_factors['T']
                  end
  end

  answers
end

