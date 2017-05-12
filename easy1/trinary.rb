class Trinary
  attr_reader :number

  def initialize(string)
    @number = string =~ /[^0-2]/ ? [0] : string.chars.reverse.map(&:to_i)
  end

  def to_decimal
    number.map.with_index { |number, index| number * (3**index) }.reduce(&:+)
  end

end
