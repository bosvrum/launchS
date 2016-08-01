#For example, write out pseudo-code (both casual and formal) that does the following:

# a method that returns the sum of two integers

def sum(a,b)
  a + b
end

puts sum(3,4)

# a method that takes an array of strings, and returns a string that is all those strings concatenated together
def concatenate(*array)
  array.join(', ')
end

puts concatenate("This is a great movie", "Yes it is!")

# a method that takes an array of integers, and returns a new array with every other element

def other_element(*int)
  int.map { |e| e  }
end

p other_element('1','2','3')
