# Write a method that prints out the numbers 1 to 1000 that are divisible by 3.
def print_numbers_divisible_by_three
  index = 1
  while index <= 1000
    if index % 3 == 0
      puts index
    end
    index += 1
  end
end
print_numbers_divisible_by_three


# Write a method that accepts an array of strings and prints out every other string.
def print_every_other_item(strings)
  index = 0
  strings.each do |string|
    if index % 2 == 0
      puts string
    end
    index += 1
  end
end
print_every_other_item(["a", "b", "c", "d", "e"])


# Write a method that accepts an array of numbers and returns the sum.
def compute_sum(numbers)
  sum = 0
  numbers.each do |number|
    sum += number
  end
  return sum
end
puts compute_sum([2, 4, 5])


# Start with the hash: city_populations = {chi: 2700000}
# Add populations to the city_populations hash for New York City (8.4 million) and San Francisco (800,000).
# The result should be: {chi: 2700000, nyc: 8400000, sf: 800000}
city_populations = {chi: 2700000}
city_populations[:nyc] = 8400000
city_populations[:sf] = 800000
p city_populations



# Write a method that prints out every number from 1 to 100. 
def one_to_onehundred
  (1..100).each { |num| p num }
end
one_to_onehundred

# Write a method that prints out every other number from 1 to 100. (That is, 1, 3, 5, 7 … 99).
def every_other
  index = 1
  50.times do
    p index
    index += 2
  end
end
every_other

# Write a method that accepts an array of numbers as a parameter, and counts how many 55’s there are in the array.
def num_of55(numbers)
  count = 0
  numbers.each do |num|
    if num == 55
      count += 1
    end
  end
  p count
end
num_of55([10, 55, 87, 55, 3, 2, 55, 978])


# Write a method that accepts an array of strings and returns a new array that has the string "awesomesauce" inserted between every string. 
# For example, if the initial array is ["a", "b", "c", "d", "e"], then the returned array should be ["a", "awesomesauce", "b", "awesomesauce", "c", "awesomesauce", "d", "awesomesauce", "e"].
def awesomesauce(strings)
  index = 1
  (strings.length - 1).times do
    strings.insert(index, "awesomesauce")
    index += 2
  end
  p strings
end

awesomesauce(["a", "b", "c", "d", "e"])


# Start with the hash: item_amounts = {chair: 5, table: 2}
# Someone just bought two chairs. Change the hash such that the chair amount is 3.
# The final result should be: {chair: 3, table: 2}
item_amounts = {chair: 5, table: 2}
item_amounts[:chair] -= 2
p item_amounts

# Start with the hash: item_amounts = {chair: 5, table: 2}
# You received 7 desks to sell. Change the hash to include desks.
# The final result should be: {chair: 5, table: 2, desk: 7}
item_amounts = {chair: 5, table: 2}
item_amounts[:desk] = 7
p item_amounts

# Write a method that accepts a number and returns its factorial.
# For example, the factorial of 5 is 5 * 4 * 3 * 2 * 1 = 120.
def factorial(num)
  if num == 0
    return 1
  else
    return num * factorial(num - 1)
  end
end
p factorial(5)


# Write a method that accepts two arrays of numbers, and prints the sum of every combination of numbers from first and second array. 
# For example, if the method receives [1, 5, 10] and [100, 500, 1000], the method should print a list: 101, 501, 1001, 105, 505, 1005, 110, 510, 1010].
def sum_arrays(array1, array2)
  sum_array = []
  i = 0
  j = 0
  array1.length.times do
    array1.length.times do
      sum_array << array1[i] + array2[j]
      j += 1
    end
    j = 0
    i += 1
  end
  p sum_array
end

array1 = [1, 5, 10]
array2 = [100, 500, 1000]

sum_arrays(array1, array2)