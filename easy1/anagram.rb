class Anagram
  attr_reader :original_word

  def initialize(original_word)
    @original_word = original_word.downcase
  end

  def match(word_array)
    word_array.select { |word| anagram_check?(word.downcase) }
  end

  def anagram_check?(word)
    return false if word == original_word
    word.chars.sort == original_word.chars.sort
  end
end

