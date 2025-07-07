require 'minitest/autorun'
# require 'minitest/reporters'
require_relative 'solution'

# Minitest::Reporters.use! Minitest::Reporters::ProgressReporter.new

class SolutionTest < Minitest::Test
  def test_calculates_the_result
    assert_equal 4446, solution(0)
  end
end
