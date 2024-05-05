print "Enter a string: "
input = gets.chomp

begin
  print "Enter a regexp pattern: "
  regexp_pattern = gets.chomp

  regexp = Regexp.new(regexp_pattern)
rescue RegexpError => e
  puts "Invalid regexp: #{e.message}"
  retry
end

matches = input.scan(regexp)

if matches.size > 0
  puts "Matched: #{matches.join(", ")}"
else
  puts "No match"
end
