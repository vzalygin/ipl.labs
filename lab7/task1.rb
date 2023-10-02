# frozen_string_literal: true

def reverse(from, to)
  from = File.open(from, 'r')
  to = File.open(to, 'w')
  from.readlines
      .map { |line| " #{line}" }
      .reverse
      .each { |line| to.write(line) }
  from.close
  to.close
end

def io_task1
  reverse('./f', './g')
  puts 'done'
end
