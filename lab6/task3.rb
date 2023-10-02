# frozen_string_literal: true

def minmax(l, r, f)
  eps = 0.01
  max_value = -Float::INFINITY
  max_i = 0
  min_value = Float::INFINITY
  min_i = 0
  (1..((r - l) / eps).to_i).each do |i|
    i = i * eps + l
    puts i
    if max_value < f.call(i)
      max_value = f.call(i)
      max_i = i
    end
    if min_value > f.call(i)
      min_value = f.call(i)
      min_i = i
    end
  end
  [max_i, min_i]
end

def io_task3
  f1 = ->(x) { (x - 1) / (x + 2) }
  l1 = 0
  r1 = 2
  f2 = ->(x) { Math.sin(x / 2 - 1) }
  l2 = -1
  r2 = 1
  puts 'choose f1 or f2'
  # TODO
end
