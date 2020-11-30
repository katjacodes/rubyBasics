=begin
Some code that redacts up to two words from any input. 
Will add to this as I continue learning by altering the code 
so it can redact any number of words and will ignore punctuation marks.
=end

redacted_text = " "

puts "Text to search through: "
text = gets.chomp
puts "First word word to redact: "
redact1 = gets.chomp
puts "Second word word to redact (optional): "
redact2 = gets.chomp

words= text.split(" ")

words.each do |word| 
  if word == redact1 || word == redact1.downcase || word == redact1.upcase ||
word == redact2 || word == redact2.downcase || word == redact2.upcase
    redacted_text += "REDACTED "
  else
    redacted_text += word + " "
  end
end

puts redacted_text