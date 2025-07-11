require 'minitest/autorun'
require 'minitest/reporters'
require_relative 'solution'

Minitest::Reporters.use! Minitest::Reporters::ProgressReporter.new

describe 'solution' do
  it 'calculates the range sum' do
    arr = [-3, 1, 2, -2, 5, 6]

    _(solution(arr)).must_equal 60
  end

  it 'handles negative numbers' do
    arr = [-9, 1, 2, 3, 5, 6]

    _(solution(arr)).must_equal 90
  end

  it 'handles negative numbers' do
    arr = [-5, 5, -5, 4]

    _(solution(arr)).must_equal 125
  end
end
