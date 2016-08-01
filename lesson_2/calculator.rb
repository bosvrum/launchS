# ask the user for two numbers
# ask the user for an operation to perform
# perform the operation on the two numbers
# output the result

# answer = Kernel.gets()
# Kernel.puts(answer)  

# My Solution

# First Solution

# puts("What's the first number?")
# first = gets.chomp.to_i
# puts ("What's the last number?")
# second = gets.chomp.to_i

# puts("What operation would you like to perform? 1) add 2) substract 3) multiply 4) divide")
# operation = gets.chomp.to_i
# operations = {
#   'add' => 1,
#   'substract' => 2,
#   'multiply' => 3,
#   'divide' => 4
# }

# operations.each_value do |value|
#   case operation == value
#   when value == 1
#    result = first + second
#    puts "This is the add result #{result}!"
#    break
#   when value == 2
#    result = first - second
#    puts "This is the substract result #{result}!"
#    break
#   when value == 3
#     result = first * second
#     puts "This is the multiply result #{result}!"
#     break
#   when value == 4
#     result = first / second
#     puts "This is the divide result #{result}!"
#   end
# end

# Second Solution
puts("What's the first number?")
first = gets.chomp.to_i
puts ("What's the last number?")
second = gets.chomp.to_i
puts("What operation would you like to perform? 1) add 2) substract 3) multiply 4) divide")
operation = gets.chomp.to_i

if operation == 1
  result = first + second
  puts "This is the add result #{result}!"
elsif operation == 2
  result = first - second
  puts "This is the substract result #{result}!"
elsif operation == 3
  result = first * second
  puts "This is the multiply result #{result}!"
else
  result = first / second
  puts "This is the divide result #{result}!"   
end



# Launch School solution
# Kernel.puts("Welcome to Calculator!")

# Kernel.puts("What's the first number?")
# number1 = Kernel.gets().chomp()

# Kernel.puts("What's the second number?")
# number2 = Kernel.gets().chomp()

# Kernel.puts("What operation would you like to perform? 1) add 2) substract 3) multiply 4) divide")
# operator = Kernel.gets().chomp()

# if operator == '1'
#   result = number1.to_i() + number2.to_i()
# elsif operator == '2'
#   result = number1.to_i() - number2.to_i()
# elsif operator == '3'
#   result = number1.to_i() * number2.to_i()
# else
#   result = number1.to_i() / number2.to_i()
# end

# Kernel.puts("The result is #{result}")






