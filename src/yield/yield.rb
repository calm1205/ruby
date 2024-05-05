def greet
  puts "Hello"
  yield
  puts "Goodbye"
end

greet { puts "My friend" }
