require "minitest/autorun"
require_relative "../lib/fizz_buzz"

class FizzBuzzTest < Minitest::Test
  # minitestはtest_で始まるメソッドをテストメソッドとして認識
  def test_fizz
    assert_nil fizz(1)
    assert_equal "fizz", fizz(3)
  end

  def test_buzz
    assert_nil buzz(1)
    assert_equal "buzz", buzz(5)
  end

  def test_fizz_buzz
    assert_equal 1, fizz_buzz(1)
    assert_equal 2, fizz_buzz(2)
    assert_equal "fizz", fizz_buzz(3)
    assert_equal 4, fizz_buzz(4)
    assert_equal "buzz", fizz_buzz(5)
    assert_equal "fizz", fizz_buzz(6)
    assert_equal "fizzbuzz", fizz_buzz(15)
  end
end
