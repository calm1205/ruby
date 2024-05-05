add_proc = Proc.new { |a, b| a.to_i + b.to_i }
add_lambda = ->(a, b) { a.to_i + b.to_i }

puts add_proc.call(10)
puts add_lambda.call(10)
puts add_lambda.call(10, 20)
