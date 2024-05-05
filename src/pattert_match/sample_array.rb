require "date"

records = [[2021], [2019, 5], [2017, 11, 25]]

records.each do |record|
  case record.size
  when 1
    puts Date.new(record[0], 1, 1)
  when 2
    puts Date.new(record[0], record[1], 1)
  when 3
    puts Date.new(record[0], record[1], record[2])
  end
end

puts "---"

records.each do |record|
  case record
  in [year]
    puts Date.new(year, 1, 1)
  in [year, month]
    puts Date.new(year, month, 1)
  in [year, month, day]
    puts Date.new(year, month, day)
  end
end
