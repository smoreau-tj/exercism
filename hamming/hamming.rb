module BookKeeping
  VERSION = 3
end
class Hamming

  def self.compute(original, mutation)
    raise ArgumentError unless original.length == mutation.length

    original.chars.zip(mutation.chars).count { |original_char, mutation_char| original_char != mutation_char }
    # original.chars.each_with_index.count do |char, index|
    #   mutation.chars[index] != char
    # end

  end
end
