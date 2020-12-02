=begin
Some code that counts how many times each word appears in a sting. 
Added a line so differently capitalized versions of the same
word are not counted as different words.
=end

puts "Text please: "
text = gets.chomp

words = text.split

frequencies = Hash.new(0)
words.each do |word|
  word.downcase!
  frequencies[word] += 1
end
frequencies = frequencies.sort_by do |word, frequency|
  frequency
end
frequencies.reverse!
frequencies.each do |word, frequency|
  puts word + " " + frequency.to_s
end