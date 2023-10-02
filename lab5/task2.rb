# frozen_string_literal: true

def filter(dates, temps, days_count)
  dates
    .zip(temps)
    .take(days_count)
    .filter { |date_temp| date_temp[1] < 10 }
end

def input_data(len)
  dates = []
  temps = []
  (1..len).map do |_|
    data = gets.split
    dates.push data[0]
    temps.push data[1].to_i
  end
  [dates, temps]
end

def io_task2
  puts 'enter a length of data'
  len = gets.to_i
  dates, temps = input_data(len)
  puts 'enter a number'
  n = gets.to_i
  puts "date\t\ttemp"
  filter(dates, temps, n)
    .each { |x| puts "#{x[0]}\t#{x[1]}" }
end
