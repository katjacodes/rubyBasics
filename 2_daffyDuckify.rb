=begin
Some code that Daffy Duckifies your answer to a simple question based on the Rule of C. 
(Langauge nerd disclaimer: This code does not take into account exceptions, 
  such as "soccer" and "muscle" in AE and "sceptic" in BE.)
=end

print "Tell me something I don't know."
user_input = gets.chomp

while user_input.length == 0
  puts "There must be something. I'm not that smart! Think again..."
  user_input = gets.chomp
  next if user_input.length >= 1
end
if (user_input.downcase.include? "s") || (user_input.downcase.include? "ce") || (user_input.downcase.include? "ci")  || (user_input.downcase.include? "cy")
  user_input.gsub!( /[sS]/ , "s" => "th" , "S" => "Th")
  user_input.gsub!( /ce/ , "the" ) 
  user_input.gsub!( /Ce/ , "The" )  
  user_input.gsub!( /ci/ , "thi" )    
  user_input.gsub!( /Ci/ , "Thi" ) 
  user_input.gsub!( /cy/ , "thy" )    
  user_input.gsub!( /Cy/ , "Thy" ) 
else 
  print "Not a single s sound in this statement!"
end

puts "So, what you're saying is, '#{user_input}'"