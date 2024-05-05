alice = "Alice"
bob = "Bob"
name = "Bob"

puts case name
     in ^alice
       "Aliceさん、こんにちは!"
     in ^bob
       "Bobさん、こんにちは!"
     end

records = [[7, 7, 7], [5, 6, 7]]

records.each do |record|
  case record
  in [n, ^n, ^n]
    puts "All elements are #{n}"
  else
    puts "Not all elements are the same"
  end
end
