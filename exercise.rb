class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    str.gsub(/[\w]+/) do |word|
      if word.length > 4
        if word.capitalize == word then 'Marklar' else 'marklar' end
      else
        word
      end
    end
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    numbers = []
    sum = 0
    (0..(nth-1)).each do |number|
      if number < 2
        numbers.push(1)
      else
        fib_number = numbers[number-1] + numbers[number-2]
        numbers.push(fib_number)
        if fib_number % 2 == 0 then sum += fib_number end
      end
    end
    return sum
  end

end
