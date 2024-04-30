class Product
  attr_accessor :name, :price, :quantity

  def initialize(name, price, quantity)
    @name = name
    @price = price
    @quantity = quantity
  end

  def self.made_in
    "Japan"
  end

  def to_s
    text = <<~TEXT
    ---------
      name:\t#{@name}
      price:\t$#{@price}
      units:\t#{@quantity}
      made in:\t#{self.class.made_in}"
    TEXT
  end
end