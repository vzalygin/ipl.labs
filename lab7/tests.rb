# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'task1'

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
    res = file.readlines
    file.close
    res
  end

  def test_empty
    insert_content('')
    expected = []

    reverse(@@from_path, @@to_path)

    assert_equal(expected, get_result)
  end

  def test_regular
    insert_content("ab\ncd")
    expected = [" ab\n", ' cd']

    reverse(@@from_path, @@to_path)

    assert_equal(expected, get_result)
  end
end
