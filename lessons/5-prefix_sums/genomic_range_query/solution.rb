# https://app.codility.com/programmers/lessons/5-prefix_sums/genomic_range_query/
# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def minimal_impact(start_pos, end_pos, impact_matrix, dna, impact_factors)
  return impact_matrix[start_pos][end_pos] if impact_matrix[start_pos][end_pos]

  if start_pos == end_pos
    impact_matrix[start_pos][end_pos] = impact_factors[dna[start_pos]]
  elsif impact_matrix[start_pos][end_pos - 1].nil?
    impact_matrix[start_pos][end_pos] = impact_matrix[end_pos][start_pos] = min(
      minimal_impact(end_pos, end_pos, impact_matrix, dna, impact_factors),
      minimal_impact(start_pos, end_pos - 1, impact_matrix, dna, impact_factors))
  else
    impact_matrix[start_pos][end_pos] = impact_matrix[end_pos][start_pos] = min(
      impact_matrix[end_pos][end_pos],
      impact_matrix[start_pos][end_pos - 1])
  end

  impact_matrix[start_pos][end_pos]
end

def min(a, b)
  a < b ? a : b
end

def solution(s, p, q)
  impact_factors = {
    'A' => 1,
    'C' => 2,
    'G' => 3,
    'T' => 4
  }
  dna = s.chars  
  impact_matrix = Array.new(dna.length) { Array.new(dna.length) }
  
  answers = Array.new(p.length)
  # Implement your solution here
  (0...p.length).each do |m|
    answers[m] = minimal_impact(p[m], q[m], impact_matrix, dna, impact_factors)
  end
  
  answers
end

require 'minitest/autorun'

class TestSolution < Minitest::Test
  def test_solution
    assert_equal [2, 4, 1], solution('CAGCCTA', [2, 5, 0], [4, 5, 6])
  end
end

