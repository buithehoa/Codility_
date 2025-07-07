require 'minitest/autorun'
require 'minitest/reporters'
require_relative 'solution'

Minitest::Reporters.use! Minitest::Reporters::ProgressReporter.new

describe 'solution' do
  it 'calculates the range sum' do
    arr = [-3, 1, 2, -2, 5, 6]

    _(solution arr).must_equal 60
  end
end

