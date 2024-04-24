
def fizz(n)
  "fizz" if n % 3 == 0
end

def buzz(n)
  "buzz" if n % 5 == 0
end

def main(n)
  return "fizzbuzz" if fizz(n) && buzz(n)
  return fizz(n) || buzz(n) || n
end

i = 0
while(i < 100)
  i += 1
  puts main(i)
end