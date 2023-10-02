# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'task1'
require_relative 'task2'
require_relative 'task3'

class Task1Tests < Minitest::Test
  def test_big_eps
    eps = 0.01
    expected = 100

    assert_equal(expected, find1(eps))
  end

  def test_small_eps
    eps = 0.0001
    expected = 10_000

    assert_equal(expected, find1(eps))
  end
end

class Task2Tests < Minitest::Test
  def test_big_eps
    eps = 0.01
    expected = 100

    assert_equal(expected, find2(eps))
  end

  def test_small_eps
    eps = 0.0001
    expected = 10_000

    assert_equal(expected, find2(eps))
  end
end

class Task3Tests < Minitest::Test
  def test_real
    f = [0, 2, ->(x) { (x - 1) / (x + 2) }]
    expected = [0, 2]

    assert_equal(expected, minmax(*f))
  end

  def test_sin
    f = [-1, 1, proc { |x| Math.sin(x / 2 - 1) }]
    expected = [-1, 1]

    assert_equal(expected, minmax(*f))
  end
end
