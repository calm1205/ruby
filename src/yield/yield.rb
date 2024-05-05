def greet
  puts "Hello"

  text = yield("こんにちは") if block_given?
  puts text
  puts "Goodbye"
end

greet { |t| t * 2 }
