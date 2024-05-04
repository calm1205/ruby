def currency_of(country)
  case country
  when :japan
    'yen'
  when :us
    'dollar'
  when :india
    'rupee'
  else
    # raise "無効な国名です。#{country}" # raiseメソッドで例外を発生させる(RuntimeError)
    raise ArgumentError, "無効な国名です。#{country}"
    raise ArgumentError.new("無効な国名です。#{country}")
  end
end

currency_of(:japan) # => "yen"
currency_of(:italy) # => RuntimeError: 無効な国名です。italy