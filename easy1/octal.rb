require 'pry'
class Octal

  def initialize(num)
    @octal_num = num =~ /[^0-7]/ ? [0] : num.to_s.split(//).map(&:to_i)
  end

  def to_decimal
    octal_power = @octal_num.size - 1
    decimal_num = []

    loop do
      break if octal_power < 0
      @octal_num.each do |digit|
      decimal_num << digit * 8**octal_power
      octal_power -= 1
      end
    end
    p decimal_num.reduce(:+)
  end
end

octal = Octal.new('8').to_decimal