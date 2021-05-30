require 'prime'

# Exercise: (work in pairs)
# Solve the following problems first in Ruby, then convert the solution to JavaScript.
# 1. Write a function that takes in an array of numbers and returns its' sum.
nums = [10, 15, 20, 30, 5, 8, 15]
def sum(numbers)
  numbers.sum
end
p sum(nums)


# 2. Write a function that takes in an array of strings and returns the smallest string.
strings = ["this", "an", "array", "strings"]
def smallest_string(strings)
  strings.sort_by!(&:length)
  strings[0]
end
p smallest_string(strings)

# 3. Write a function that takes in an array of numbers and returns a new array with the numbers in reverse order.
nums = [10, 15, 20, 30, 5, 8, 15]
def reverse(numbers)
  numbers.reverse
end
p reverse(nums)

# 4. Write a function that takes in an array of words and returns the number of words that begin with the letter “a”.
words = ["shoe", "egg", "ant", "arm", "antarctica", "lamp"]
def a_words(words)
  count = 0
  words.each { |word| word[0] == "a" ? count += 1 : nil }
  return count
end
p a_words(words)

# 5. Write a function that takes in an array of strings and joins them together to make a single string separated by commas.
words = ["shoe", "egg", "ant", "arm", "antarctica", "lamp"]
def single_string(strings)
  strings.join(",")  
end
p single_string(words)

# 6. Write a function that takes in an array of numbers and returns the product of all the numbers (each number multiplied by each other).
nums = [10, 15, 20, 30, 5, 8, 15]
def product(nums)
  nums.reduce(:*)
end
p product(nums)

# 7. Write a function that takes in an array of numbers and returns the two smallest numbers.
nums = [10, 15, 20, 30, 5, 8, 15]
def two_smallest(nums)
  nums.sort[0..1]
end
p two_smallest(nums)

# 8. Write a function that takes in an array of numbers and returns a count of how many zeros are in the array.
nums = [10, 15, 20, 30, 5, 8, 15]
def number_zeros(nums)
  nums.join.count("0")
end
p number_zeros(nums)

# 9. Write a function that takes in an array of numbers and returns true if all the numbers are bigger than 10, otherwise returns false.
nums = [10, 15, 20, 30, 5, 8, 15]
def greater_than_ten(nums)
  nums.each do |num|
    if num > 10
      return true
    else
      return false
      break
    end
  end
end
p greater_than_ten(nums)

# 10. Write a function that takes in an array of words and returns the number of times the letter “a” appeared in total.
words = ["shoe", "egg", "ant", "arm", "antarctica", "lamp"]
def num_of_a(words)
  words.join.count("a")
end
p num_of_a(words)       #=> 6

# (solutions to half of the ruby problems: https://gist.github.com/peterxjang/a9a3827be5077abe008b62f6f9900d71)

# BONUS PROBLEMS
# Write a function that accepts a string and returns whether it’s a palindrome.
def palindrome(string)
  string == string.reverse ? true : false
end
p palindrome("kayak")   #=> true

# Write a function to generate/print/store the first "n" prime numbers.
def first_n_prime(n)
  p Prime.first(n)
end
first_n_prime(15)

# Given a tic-tac-toe board (matrix of 3 x 3), write a function that can check to see whether X or O won.

# DOUBLE BONUS:
# Use the Ruby .map/.select/.reduce shortcuts to rewrite some of the Ruby problems!
# Use the JavaScript .map/.filter/.reduce shortcuts to rewrite some of the JavaScript problems!