# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'task'

class Task1tests < Minitest::Test
  def test_task
    assert_equal task1(0), 0
  end
end


