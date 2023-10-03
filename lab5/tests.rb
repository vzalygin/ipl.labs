# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'task1'
require_relative 'task2'
require_relative 'task3'

class Task1Tests < Minitest::Test
  def test_task
    assert_equal(0, func(0))
  end
end

class Task2Tests < Minitest::Test
  def test_empty
    dates = []
    temps = []
    n = 0
    expected = []

    assert_equal(expected, filter(dates, temps, n))
  end

  def test_regular
    dates = ['01.01.1970', '02.01.1970', '03.01.1970']
    temps = [15, -5, 10]
    n = 3
    expected = [['02.01.1970', -5]]

    assert_equal(expected, filter(dates, temps, n))
  end

  def test_regular2
    dates = ['05.01.1970', '06.01.1970', '07.01.1970']
    temps = [15, 0, 10]
    n = 2
    expected = [['06.01.1970', 0]]

    assert_equal(expected, filter(dates, temps, n))
  end

  def test_regular3
    dates = ['01.01.1970', '02.01.1970', '03.01.1970']
    temps = [10, -5, -10]
    n = 1
    expected = []

    assert_equal(expected, filter(dates, temps, n))
  end
end

class Task3Tests < Minitest::Test
  def test_empty
    strs = []
    expected = []

    assert_equal(expected, correct_strs(strs))
  end

  def regular_test
    strs = ['abc ab a', 'a ac abc', 'a a a', 'a a ab']
    expected = ['abc ab a', 'abc ac a', 'a a a', 'ab a a']

    assert_equal(expected, correct_strs(strs))
  end

  def generate_random_word
    (1..rand(1, 15)).map { |_| ('a'.ord + rand(26)).chr }.join('')
  end

  def generate_random_str
    (1..rand(1, 15)).map { |_| generate_random_word }.join(' ')
  end
end
