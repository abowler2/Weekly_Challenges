class Sieve
  def initialize(num)
    @numbers = (2..num).to_a
  end

  def primes
    @numbers.each do |prime|
      @numbers.reject! { |number| (number != prime) && (number % prime == 0) }
    end
    @numbers
  end

end