text = "私の誕生日は1977年7月17日です。"

if m = /(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/.match(text)
  puts "マッチしました"
  pp m
  pp m[:year], m[:month], m[:day]
else
  puts "マッチしません"
end
