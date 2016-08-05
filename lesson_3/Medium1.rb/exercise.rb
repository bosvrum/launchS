# Let's do some "ASCII Art" (a stone-age form of nerd artwork from back in the days before computers had 
#video screens).

# For this exercise, write a one-line program that creates the following output 10 times, with the 
#subsequent line indented 1 space to the right:

p 10.times { |number| puts ( " " * number ) + "The Flintstones Rock!" }

# The Flintstones Rock!
#  The Flintstones Rock!
#   The Flintstones Rock!


#Q2

#Create a hash that expresses the frequency with which each letter occurs in this string:

statement = "The Flintstones Rock"

# result = {}
# statement.each_char do |v|
#   result[v] = statement.scan(v).count
# end


# arr = statement.scan /\w/ 
# counts = Hash.new(0)
# arr.each do |word|
#   p counts[word] += 1
# end

result = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a
letters.each do |letter|
  letter_frequency = statement.scan(letter).count
  puts result[letter] = letter_frequency if letter_frequency > 0
end

# statement_hash = {}
# statement.each_char do |character|
#    statement_hash[character] = statement.scan(character).count
# end
# { "F"=>1, "R"=>1, "T"=>1, "c"=>1, "e"=>2, ... }

puts "---------------------"
#Q4
#What happens when we modify an array while we are iterating over it? What would be output by this code?

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end

numbers = [1, 2, 3, 4]
numbers.each_with_index do |number, index|
  p "#{index}  #{numbers.inspect}  #{number}"
  numbers.shift(1)
end

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end


# Question 5

# Alan wrote the following method, which was intended to show all of the factors of the input number:

def factors(number)
  dividend = number
  divisors = []
  while dividend > 0 do 
    divisors << number / dividend if number % dividend == 0
    dividend -= 1
  end 
  divisors
end

p factors(0)
