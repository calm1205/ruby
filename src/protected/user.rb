# protectedメソッドはそのメソッドを定義したクラス自身と、そのサブクラスのインスタンスメソッドからレシーバ付きで呼び出せます。
# レシーバ付き、つまり同じクラスから生成されたインスタンスメソッドから呼び出せる

class User
  attr_accessor :name
  attr_reader :weight
  protected :weight

  def initialize(name, weight)
    @name = name
    @weight = weight
  end

  def heavier_than?(other_user)
    other_user.weight < @weight
  end

  # protected
  # def weight
  #   @weight
  # end
end

alice = User.new("Alice", 50)
bob = User.new("Bob", 60)

puts alice.heavier_than?(bob)
puts bob.heavier_than?(alice)
