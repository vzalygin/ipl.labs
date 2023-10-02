# frozen_string_literal: true

def func(x)
  x * (Math.cos(x) + Math.exp(-(x + 3)))
end

def io_task1
  puts 'enter x'
  puts "the result is: #{func(gets.to_i)}"
end
