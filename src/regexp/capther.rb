text = "私の誕生日は1977年7月17日です。"

if m = /(\d+)年(\d+)月(\d+)日/.match(text)
  puts "マッチしました"
  pp m
  pp m[1..3]
else
  puts "マッチしません"
end
