def greet
  puts "Hello"
  yield
  puts "Goodbye"
end

greet do
  puts "My friend"
end