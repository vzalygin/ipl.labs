# frozen_string_literal: true

def minmax(l, r, f)
  eps = 0.01
  max_value = -Float::INFINITY
  max_i = 0
  min_value = Float::INFINITY
  min_i = 0
  (0..((r - l) / eps).to_i).each do |i|
    i = i * eps + l
    if max_value < f.call(i)
      max_value = f.call(i)
      max_i = i
    end
    if min_value > f.call(i)
      min_value = f.call(i)
      min_i = i
    end
  end
  [min_i, max_i]
end

def io_task3
  fs = [[0, 2, ->(x) { (x - 1) / (x + 2) }],
        [-1, 1, proc { |x| Math.sin(x / 2 - 1) }]]

  puts 'choose f1 (print 1) or f2 (print 2)'
  min, max = minmax(*fs[gets.to_i - 1])
  puts "min: #{min}, max: #{max}"
end
