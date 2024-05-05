# && は || よりも優先順位が高い
puts (true || true && false)

# or と and は優先順位が同じ
puts (true or true and false)
