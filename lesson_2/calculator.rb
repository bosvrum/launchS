require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')
LANGUAGE = 'en'
puts MESSAGES.inspect


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

# operator_prompt = <<-MSG
#  What operation would you like to perform?
# 1) add
# 2) substract
# 3) multiply
# 4) divide
# MSG

# prompt(operator_prompt)
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
# puts("What's the first number?")
# first = gets.chomp.to_i
# puts("What's the last number?")
# second = gets.chomp.to_i
# operator_prompt = <<-MSG
#     What operation would you like to perform?
#     1) add
#     2) substract
#     3) multiply
#     4) divide
#   MSG

# prompt(operator_prompt)
# operation = gets.chomp.to_i

# if operation == 1
#   result = first + second
#   puts "This is the add result #{result}!"
# elsif operation == 2
#   result = first - second
#   puts "This is the substract result #{result}!"
# elsif operation == 3
#   result = first * second
#   puts "This is the multiply result #{result}!"
# else
#   result = first / second
#   puts "This is the divide result #{result}!"
# end

# Launch School solution

def messages(message, lang='en')
  MESSAGES[lang][message]
end

def prompt(msg)
  message = messages(msg, LANGUAGE)
  Kernel.puts "=> #{msg}"
end

def float?(num)
  input.to_f.to_s == input
end

def valid_number?(num)
  num.to_i.to_s == num
  #num.to_i.nonzero? # has a valid numerical representation
end

def number?(num)
  valid_number?(num) || float?(num)
end
def operation_to_message(op)
  case op
  when '1'
    'Adding'
  when '2'
    'Substracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
end

prompt('welcome')

name = ''
loop do
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt('valid_name')
  else
    break
  end
end

prompt("Hi #{name}!")

loop do # main loop
  number1 = ''
  loop do
    prompt('first_number')
    number1 = Kernel.gets().chomp()

    if valid_number?(number1)
      break
    else
      prompt('non_valid_number')
    end
  end

  number2 = ''
  loop do
    prompt('second_number')
    number2 = Kernel.gets().chomp()

    if valid_number?(number2)
      break
    else
      prompt('non_valid_number')
    end
  end

  operator_prompt = <<-MSG
    What operation would you like to perform?
    1) add
    2) substract
    3) multiply
    4) divide
  MSG

  prompt(operator_prompt)

  operator = ''
  loop do
    operator = Kernel.gets().chomp()

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt('choose_number')
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers...")

  result = case operator
           when '1'
             number1.to_i() + number2.to_i()
           when '2'
             number1.to_i() - number2.to_i()
           when '3'
             number1.to_i() * number2.to_i()
           when '4'
             number1.to_i() / number2.to_i()
           end
  prompt("The result is #{result}")

  prompt('perform_new_calculation')

  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt('thanks')
