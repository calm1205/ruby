alice = "Alice"
bob = "Bob"
name = "Bob"

puts case name
     in ^alice
       "Aliceさん、こんにちは!"
     in ^bob
       "Bobさん、こんにちは!"
     end
