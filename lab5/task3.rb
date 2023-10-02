# frozen_string_literal: true

def correct_str(str)
  str.split(' ').sort_by { |word| -word.size }.join(' ')
end

def correct_strs(strs)
  strs.map { |str| correct_str(str) }
end

def io_task3
  puts 'input number of strings'
  n = gets.to_i
  strs = (1..n).map { |_| gets }

  puts "before modification:\n"
  strs.each { |str| puts str }

  strs = correct_strs(strs)

  puts "after modification:\n"
  strs.each { |str| puts str }
end
