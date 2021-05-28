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


# 5. Write a function that takes in an array of strings and joins them together to make a single string separated by commas.


# 6. Write a function that takes in an array of numbers and returns the product of all the numbers (each number multiplied by each other). 


# 7. Write a function that takes in an array of numbers and returns the two smallest numbers.


# 8. Write a function that takes in an array of numbers and returns a count of how many zeros are in the array.


# 9. Write a function that takes in an array of numbers and returns true if all the numbers are bigger than 10, otherwise returns false.
# 10. Write a function that takes in an array of words and returns the number of times the letter “a” appeared in total.
# (solutions to half of the ruby problems: https://gist.github.com/peterxjang/a9a3827be5077abe008b62f6f9900d71)
# BONUS PROBLEMS
# Write a function that accepts a string and returns whether it’s a palindrome. 
# Write a function to generate/print/store the first "n" prime numbers.
# Given a tic-tac-toe board (matrix of 3 x 3), write a function that can check to see whether X or O won.
# DOUBLE BONUS:
# Use the Ruby .map/.select/.reduce shortcuts to rewrite some of the Ruby problems!
# Use the JavaScript .map/.filter/.reduce shortcuts to rewrite some of the JavaScript problems!