# frozen_string_literal: true

def find2(eps)
  sequence = Enumerator.new do |y|
    n = 1
    loop do
      y << [1.0 * n / ((n**2) + 2), n]
      n += 1
    end
  end

  sequence.take_while { |value_key| value_key[0] >= eps }[-1][1] + 1
end

def io_task2
  puts 'enter the eps'
  eps = gets.to_f
  puts "the first element smaller then #{eps} is on #{find2(eps)} place"
end
