retry_count = 0

begin
  puts '--- execute ---'
  1 / 0
rescue ZeroDivisionError => e
  if retry_count < 3
    puts "retry"
    retry_count += 1
    retry
  end
  puts "Error: #{e.message}"

end