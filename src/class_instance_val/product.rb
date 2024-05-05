class Product
  @name = "Product" # クラスインスタンス変数（インスタンスメソッドからはアクセス出来ない）
  @@name = "Product" # クラス変数（クラスメソッド、インスタンスメソッドからアクセス可能）

  attr_accessor :name

  def self.name
    @name # クラスインスタンス変数
  end

  def initialize(name)
    @name = name
  end
end
