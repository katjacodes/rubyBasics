=begin
Some code to help you store your movie ratings. 
Would've loved to get it to work with symbols
instead of hashrockets, but .to_sym is not my 
friend right now. More later.
=end

movies = {
    "Great Expectations" => 5, 
    }
  
  puts "What would you like to do?"
  puts "'add' to add a movie" 
  puts "'update' to update an existing movie rating" 
  puts "'delete' to delete a movie" 
  puts "'display' to display your entire list of movies"
  choice = gets.chomp
  
  case choice
  when "add"
    puts "What movie would you like to add? "
    title = gets.chomp
    if movies[title].nil?
      puts "What is your rating? (Type a number 0 to 5.) "
      rating = gets.chomp
      movies[title] = rating.to_i
      puts "#{title} has been added with a rating of #{rating}."
   else
    puts "That movie already exists in your database! Its rating is #{movies[title]}."
   end

  when "update"
    puts "What movie rating would you like to update? "
    title = gets.chomp
    if movies[title].nil?
      puts "Error! That movie does not exist in your database."
    else
      puts "Update your rating! Type a number 0 to 5.) "
      rating = gets.chomp
      movies[title] = rating.to_i
      puts "The rating of #{title} has been updated. It is now #{rating}."
    end
    
  when "display"
    movies.each { |movie, rating| puts "#{movie}: #{rating}" }
  
  when "delete"
    puts "Which movie would you like to delete? "
    title = gets.chomp
      if movies[title].nil?
        puts "Error! That movie does not exist in your database."
      else
        movies.delete(title)
      end

  else
    puts "Error! This is not a valide command."
  end