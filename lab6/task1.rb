# frozen_string_literal: true

def find1(eps)
  func = ->(n) { 1.0 * n / ((n**2) + 2) }
  left = 0
  right = 1
  while func.call(right) >= eps
    left = right
    right *= 2
  end
  while right - left > 1
    cur = (right + left) / 2
    if func.call(cur) < eps
      right = cur
    else
      left = cur
    end
  end
  right
end

def io_task1
  puts 'enter the eps'
  eps = gets.to_f
  puts "the first element smaller then #{eps} is on #{find1(eps)} place"
end
