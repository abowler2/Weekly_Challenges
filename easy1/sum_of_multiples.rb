require 'pry'

class SumOfMultiples
  def initialize(*multiples)
    @multiples = multiples.empty? ? [3, 5] : multiples
  end

  def self.to(limit)
    SumOfMultiples.new.to(limit)
  end

  def to(limit)
    (0...limit).select { |num| num % @multiples == 0 }.reduce(:+)
  end

  private

  def multiple?(number)
    @multiples.any? { |multiple| number % multiple == 0 }
  end
end

SumOfMultiples.to(10)
