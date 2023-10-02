# frozen_string_literal: true

def reverse(from, to)
  from = File.open(from, 'r')
  to = File.open(to, 'w')
  to.write(
    from.readlines
        .map { |line| " #{line.strip}" }
        .join("\n")
  )
  from.close
  to.close
end

def io_task1
  reverse('./f', './g')
  puts 'done'
end
