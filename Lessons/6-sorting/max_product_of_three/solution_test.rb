require 'minitest/autorun'
require 'minitest/reporters'
require_relative 'solution'

Minitest::Reporters.use! Minitest::Reporters::ProgressReporter.new

describe 'solution' do
  it 'calculates the ...' do
    a = 0

    _(solution 0).must_equal 10
  end
end

