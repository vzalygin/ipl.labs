# frozen_string_literal: true

require_relative 'task1'
require_relative 'task2'

def nav_to_task
  puts 'select task number'
  case gets.to_i
  when 1
    io_task1
  when 2
    io_task2
  else
    puts 'unknown task number'
  end
end

nav_to_task
