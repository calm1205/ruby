require_relative 'product'
require_relative 'dvd'

dvd = DVD.new('An awesome film', 1000, 3, 120)
puts dvd.to_s

puts Product.made_in()
puts DVD.made_in()