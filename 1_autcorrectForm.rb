# A simple form that corects capitalization errors in the input.

print "What's your first name?"
first_name = gets.chomp
first_name.capitalize!

print "What's your last name?"
last_name = gets.chomp
last_name.capitalize!

print "In what city do you live?"
city = gets.chomp
city.capitalize!

print "In what state do you live? (Abbreviation)"
state = gets.chomp
state.upcase!

print "Your name is #{first_name} #{last_name} and you live in #{city}, #{state}."