# Describe the difference between ! and ? in Ruby. And explain what would happen in the following scenarios:

# what is != and where should you use it? => is not equal with
# put ! before something, like !user_name
# put ! after something, like words.uniq! => mutates de object
# put ? before something
# put ? after something
# put !! before something, like !!user_name

# != means "not equals"
# ? : is the ternary operator for if...else
# !!<some object> is used to turn any object into their boolean equivalent. (Try it in irb)
# !<some object> is used to turn any object into the opposite of their boolean equivalent, just like the above, but opposite.

# ------------------------------------------------------------------------------------------

# Q3
# Replace the word "important" with "urgent" in this string:
advice = "Few things in life are as important as house training your pet dinosaur."

advice.gsub!('important', 'urgent')

# ------------------------------------------------------------------------------------------
# Q4
# The Ruby Array class has several methods for removing items from the array. 
# Two of them have very similar names. Let's see how they differ:

numbers = [1, 2, 3, 4, 5]

# What do the following method calls do (assume we reset numbers to the original array between method calls)?
numbers.delete_at(1) # numbers is now [1, 3, 4, 5]
numbers.delete(1)    # numbers is now [2, 3, 4, 5]

# ------------------------------------------------------------------------------------------
# Q5
#Programmatically determine if 42 lies between 10 and 100.
p 42.between?(10, 100)
#(10..100).include?(42)
#(10..100).cover?(42)

# ------------------------------------------------------------------------------------------

# Q6
#Starting with the string:
famous_words = " seven years ago..."
four = "Four score and"
famous_words + four
four << famous_words
p famous_words.prepend( four)
# show two different ways to put the expected "Four score and " in front of it.

# ------------------------------------------------------------------------------------------

# Q7
def add_eight(number)
  number + 8
end

number = 2

how_deep = "number"
5.times { how_deep.gsub!("number", "add_eight(number)") }

p how_deep
p eval(how_deep)

# Q8
#If we build an array like this:

flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]

# Make this into an un-nested array.

flintstones.flatten!
#=> ["Fred", "Wilma", "Barney", "Betty", "BamBam", "Pebbles"]

# ------------------------------------------------------------------------------------------

# Q9

# Given the hash below

flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
# Turn this into an array containing only two elements: Barney's name and Barney's number

p flintstones.assoc("Barney")

# ------------------------------------------------------------------------------------------

# Q10
# Turn this array into a hash where the names are the keys and the values are the positions in the array.

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

flintstones_hash = {} # store new hash values
flintstones.each_with_index do |value, index|
  flintstones_hash[value] = index
end

