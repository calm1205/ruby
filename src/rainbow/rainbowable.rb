module Rainbowable
  COLOR_CODES = [31, 32, 33, 34, 35, 36]
  COLOR_CODE_PREFIX = "\e[0m"

  def rainbow
    to_s
      .each_char
      .map
      .with_index do |char, count|
        color_code = COLOR_CODES[count % COLOR_CODES.size]
        "\e[#{color_code}m#{char}"
      end
      .join + COLOR_CODE_PREFIX
  end
end

String.include Rainbowable
Array.include Rainbowable

puts "hello world".rainbow
puts [1, 2, 3].rainbow
