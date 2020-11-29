# Some code that Daffy Duckifies you answer to a simple question.

print "Tell me something I don't know."
user_input = gets.chomp
user_input.downcase!

if user_input.include? "s"
  user_input.gsub!(/s/, "th")
else
  print "Not a single s in this statement!"
end

puts "So, what you're saying is, '#{user_input}'"