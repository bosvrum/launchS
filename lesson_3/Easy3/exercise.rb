# Q1
# Show an easier way to write this array:

flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# ------------------------------------------------------------------------------------------

# Q2
# Add the family pet "Dino" to our usual array:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones << "Dino"

# ------------------------------------------------------------------------------------------
# Q3
#How can we add multiple items to our array? (Dino and Hoppy)
flintstones.push("Dino").push("Hoppy")   # push returns the array so we can chain
flintstones.concat(%w(Dino Hoppy))  # concat adds an array rather than one item

# ------------------------------------------------------------------------------------------
# Q4

# Shorten this sentence: ...remove everything starting from "house".
#Review the String#slice! documentation, and use that method to make the return value "Few things in life are as important as ". But leave the advice variable as "house training your pet dinosaur.".

advice = "Few things in life are as important as house training your pet dinosaur."
p advice.slice!(0, advice.index('house'))

# ------------------------------------------------------------------------------------------
# Q5

# Write a one-liner to count the number of lower-case 't' characters in the following string:

statement = "The Flintstones Rock!"
statement.scan('t').count

# ------------------------------------------------------------------------------------------
# Q6

# Back in the stone age (before CSS) we used spaces to align things on the screen. If we had a 40 character wide table of Flintstone family members, how could we easily center that title above the table with spaces?

title = "Flintstone Family Members"
title.center(40)


