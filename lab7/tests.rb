# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'task1'
require_relative 'task2'

class Task1Tests < Minitest::Test
  @@from_path = './f'
  @@to_path = './g'

  def setup
    File.open(@@from_path, 'w+') do |file|
    end
    File.open(@@to_path, 'w+') do |file|
    end
  end

  def teardown
    File.delete(@@from_path)
    File.delete(@@to_path)
  end

  def insert_content(text)
    File.open(@@from_path, 'w') do |file|
      file.write(text)
    end
  end

  def get_result
    file = File.open(@@to_path, 'r')
    res = file.readlines.join('')
    file.close
    res
  end

  def test_empty
    insert_content('')
    expected = ''

    reverse(@@from_path, @@to_path)

    assert_equal(expected, get_result)
  end

  def test_regular
    insert_content("ab\ncd")
    expected = " ab\n cd"

    reverse(@@from_path, @@to_path)

    assert_equal(expected, get_result)
  end
end

class Task2Tests < Minitest::Test
  def test_int_to_s
    obj = Int.new(32)
    expected = '32'

    assert_equal(expected, obj.to_s)
  end

  def test_int_number_of_digits
    obj = Int.new(-42)
    expected = 2

    assert_equal(expected, obj.number_of_digits)
  end

  def test_int_number_of_digits2
    obj = Int.new(434)
    expected = 3

    assert_equal(expected, obj.number_of_digits)
  end

  def test_intfloat_to_s
    obj = IntAndFloat.new(42, -4.2)
    expected = '42 -4.2'

    assert_equal(expected, obj.to_s)
  end

  def test_intfloat_number_of_digits
    obj = IntAndFloat.new(42, -4.2)
    expected = 2

    assert_equal(expected, obj.number_of_digits)
  end
end
