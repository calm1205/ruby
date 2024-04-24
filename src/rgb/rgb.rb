def to_hex(r,g,b)
  # sumの引数が先頭になる
  [r,g,b].sum('#') do |n|
    n.to_s(16).rjust(2, '0')
  end
end