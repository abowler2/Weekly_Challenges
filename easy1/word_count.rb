class Phrase
  def initialize(string)
    @phrase = string.downcase.scan(/\w+'?\w|\w+/)
  end

  def word_count
    @phrase.each_with_object(Hash.new(0)) { |word, hash| hash[word] += 1 }
  end
end
