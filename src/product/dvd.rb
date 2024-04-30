require_relative 'product'

class DVD < Product
  attr_accessor :duration

  def initialize(name, price, quantity, duration)
    super(name, price, quantity)
    @duration = duration
  end

  def to_s
    text = <<~TEXT
      #{super}  duration: \t#{@duration} min
    TEXT
  end
end