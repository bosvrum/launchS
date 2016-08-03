# Q1
# In this hash of people and their age, see if "Spot" is present.

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

ages.key?("Spot")
ages.has_key?("Spot")
ages.include?("Spot")
ages.member?("Spot")

# ------------------------------------------------------------------------------------------

# Q2
# Add up all of the ages from our current Munster family hash:

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

ages.values.inject(:+)

# ------------------------------------------------------------------------------------------

# Q3

# In the age hash: throw out the really old people (age 100 or older).

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
ages.keep_if { |_, age| age < 100 }
ages.select {|k,v| v < 100}

# ------------------------------------------------------------------------------------------

# Q4

# Convert the string in the following ways (code will be executed on original munsters_description above):

# "The munsters are creepy in a good way."
# "tHE mUNSTERS ARE CREEPY IN A GOOD WAY."
# "the munsters are creepy in a good way."
# "THE MUNSTERS ARE CREEPY IN A GOOD WAY."

munsters_description = "The Munsters are creepy in a good way."
munsters_description.capitalize!
munsters_description.swapcase!
munsters_description.downcase!
munsters_description.upcase!

# ------------------------------------------------------------------------------------------

# Q5

# We have most of the Munster family in our age hash:
# add ages for Marilyn and Spot to the existing hash
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
additional_ages = { "Marilyn" => 22, "Spot" => 237 }

p ages.merge!(additional_ages)

# ------------------------------------------------------------------------------------------

# Q6
# Pick out the minimum age from our current Munster family hash:

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

p ages.values.min

# ------------------------------------------------------------------------------------------

# Q7
# See if the name "Dino" appears in the string below:

advice = "Few things in life are as important as house training your pet dinosaur."
advice.include?('Dino')
advice.match("Dino")

# ------------------------------------------------------------------------------------------

# Q8

# Find the index of the first name that starts with "Be"

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.index {|name| name[0, 2] == 'Be'}

# ------------------------------------------------------------------------------------------

# Q9

# Using array#map!, shorten each of these names to just 3 characters:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.map! do |name|
  p name[0, 3]
end
flintstones.map! { |name| name[0,3] }
