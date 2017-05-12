def fizzbuzz(num1, num2)
  fizzbuzz = num1.upto(num2).map do |number|
    if number % 3 == 0 && number % 5 == 0
      'FizzBuzz'
    elsif number % 3 == 0
      'Fizz'
    elsif number % 5 == 0
      'Buzz'
    else
      number
    end
  end
end

p fizzbuzz(1, 100)
