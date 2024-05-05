require "debug"

def fizz(n)
  "fizz" if n % 3 == 0
end

def buzz(n)
  "buzz" if n % 5 == 0
end

def fizz_buzz(n)
  binding.break
  return "fizzbuzz" if fizz(n) && buzz(n)
  return fizz(n) || buzz(n) || n
end

fizz_buzz(15)
