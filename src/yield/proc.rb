add_proc = Proc.new { |a = 0, b = 0| a + b }

puts add_proc.call(10, 20)

add_proc = proc { |a = 0, b = 0| a + b }

puts add_proc.call(10, 20)

def sum(&block)
  block.call(10, 20)
end

puts sum(&add_proc)
