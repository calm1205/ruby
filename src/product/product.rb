class Product
  attr_accessor :name, :price, :quantity

  def initialize(name, price, quantity)
    @name = name
    @price = price
    @quantity = quantity
  end

  private_class_method def self.max_discount_rate
    0.5
  end

  def self.made_in
    "Japan"
  end

  def self.max_discount
    self.max_discount_rate
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

  def max_discount_price
    price * self.class.max_discount_rate # インスタンスメソッド内でプライベートクラスメソッドは呼べない
  end

  private

  def discount_rate
    0.8
  end
end