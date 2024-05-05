require "minitest/autorun"
require_relative "convert_hash_syntax"

class ConvertHashSyntaxTest < Minitest::Test
  def test_convert_hash_syntax
    original_syntax = <<~TEXT
      {
        :name => 'Alice',
        :age=>20,
        :gender => :female
      }
    TEXT

    expected = <<~TEXT
      {
        name: 'Alice',
        age: 20,
        gender: :female
      }
    TEXT

    assert_equal expected, convert_hash_syntax(original_syntax)
  end
end
