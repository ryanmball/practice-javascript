@x = 100

def add_one(num)
  return num + @x
end

puts @x
puts add_one(5)
puts @x