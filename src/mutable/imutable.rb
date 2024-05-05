array = Array.new(5) { "default" }

first = array[0]
firstUpcase = first.upcase

pp array[0] # "default"
pp array # ["default", "default", "default", "default", "default"]
pp firstUpcase # "DEFAULT"
