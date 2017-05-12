# Write a program that will take a string of digits and give you all the 
# possible consecutive number series of length n in that string.

class Series
  def initialize(digits)
    @digits = digits.each_char.map(&:to_i)
  end

  def slices(num)
    raise ArgumentError, 'Number is bigger than the string size.' if num > @digits.size
    result = []
    index = 0
    0.upto(@digits.size - num) do
      result << @digits.slice(index, num)
      index += 1
    end
    result
  end
end

series = Series.new('01234')
p series.slices(3)

# works for 1 - need to refactor for larger numbers
