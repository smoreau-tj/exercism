module BookKeeping
  VERSION = 3
end
class Hamming

  def self.compute(original, mutation)
    if original.length != mutation.length
      raise ArgumentError
    end
    difference = 0
    mutation_split = mutation.split(//)
    original.split('').each_with_index do |char, index|
      unless mutation_split[index] == char
        difference +=  1
      end
    end
    difference
  end
end
