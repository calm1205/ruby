require_relative "product"
require_relative "dvd"

product = Product.new("An awesome film", 1000, 3)
dvd = DVD.new("An awesome film", 1000, 3, 120)
puts dvd.to_s

puts
puts "Product made in:\t#{Product.made_in}"
puts "DVD made in:\t\t#{DVD.made_in}"

puts
# puts "Product max discounted price: #{product.max_discount_price}"
puts "Product max discounted price: \t#{Product.max_discount}"
puts "DVD discounted price: \t\t#{dvd.discounted_price}" # サブクラスでもスーパークラスのprivateメソッドが使える

puts
