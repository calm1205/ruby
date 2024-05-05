array = Array.new(5) { "default" }

first = array[0]
first.upcase!

pp array[0] # "DEFAULT"
pp array # ["DEFAULT", "default", "default", "default", "default"]

# --------------------------

array2 = Array.new(5, "default")

first2 = array2[0]
first2.upcase!

pp array2[0] # "DEFAULT"
pp array2 # ["DEFAULT", "DEFAULT", "DEFAULT", "DEFAULT", "DEFAULT"]
