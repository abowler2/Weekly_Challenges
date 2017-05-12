class Hex
  HEX_LETTER_NUMBERS = ([*'0'..'9'] + [*'a'..'f']).zip(0..15).to_h 

  def initialize(string)
    @hex_number = string.chars.map { |char| HEX_LETTER_NUMBERS[char] }
  end

  def to_decimal
    return 0 unless @hex_number.all? { |char| (0..15).include?(char) }
    @hex_number.reverse.map.with_index { |number, index| number * (16**index) }.reduce(&:+)
  end

end

number = Hex.new('a91f4e')
number2 = Hex.new('carrot')
number3 = Hex.new('1t34ya')

p number.to_decimal
p number2.to_decimal
p number3.to_decimal