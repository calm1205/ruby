begin
  1 / 0
  "hello world".foo
rescue ZeroDivisionError => e
  puts "Error Class: #{e.class}"
  puts "Error Message: #{e.message}"

  puts "Backtrace ----- "
  puts e.backtrace
  puts "-----"

rescue NoMethodError => e
  puts "Error Class: #{e.class}"
  puts "Error Message: #{e.message}"

  puts "Backtrace ----- "
  puts e.backtrace
  puts "-----"

rescue => e
  puts "Error Class: #{e.class}"
  puts "Error Message: #{e.message}"

  puts "Backtrace ----- "
  puts e.backtrace
  puts "-----"
end