require 'pry'

class DNA
  attr_reader :dna_strand, :short_strand, :long_strand

  def initialize(dna_strand)
    @dna_strand = dna_strand
  end

  def hamming_distance(second_strand)
    find_short_string(second_strand)

    mutations = []
    short_strand.chars.each_with_index do |element, index|
      mutations << element if element != long_strand[index]
    end
    mutations.count
  end

  def find_short_string(second_strand)
    if second_strand.size < dna_strand.size
      @short_strand, @long_strand = second_strand, dna_strand
    else
      @short_strand, @long_strand = dna_strand, second_strand
    end
  end
end
