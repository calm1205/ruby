puts "Start"

begin
  1 + "10"
rescue => e
  puts "Error: #{e}"
end

puts "End"
