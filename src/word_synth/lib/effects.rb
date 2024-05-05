module Effects
  def self.reverse
    ->(words) { words.split(" ").map(&:reverse).join(" ") }
  end

  def self.echo(times)
    ->(words) do
      words.chars.map { |char| char == " " ? char : char * times }.join
    end
  end

  def self.loud(level)
    ->(words) do
      words.split(" ").map { |word| word.upcase + "!" * level }.join(" ")
    end
  end
end
