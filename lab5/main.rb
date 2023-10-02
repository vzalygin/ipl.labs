# frozen_string_literal: true

require_relative 'task1'
require_relative 'task2'
require_relative 'task3'

def nav_to_task
  puts 'select task number'
  case gets.to_i
  when 1
    io_task1
  when 2
    io_task2
  when 3
    io_task3
  else
    puts 'unknown task number'
  end
end

nav_to_task
