class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    words = str.split(/\W/)
    words.each do |word|
      if word.length >= 5
	      if word.capitalize == word
          str[word] = 'Marklar'
        else
          str[word] = 'marklar'
        end
      end
    end
    str
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    f0 = 0
    f1 = 1
    sum = 0
    if nth > 1
      nth = nth - 1
      while nth > 0
        f = f0 + f1
        f0 = f1
        f1 = f
        sum = sum + f if f.even?
        # puts f
        nth = nth - 1
      end
    end
    sum
  end

end
