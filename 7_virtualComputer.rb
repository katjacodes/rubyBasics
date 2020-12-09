=begin
Getting comfortable with the concept of object-oriented programming:
A Computer class that generates virtual computer instances.
=end

class Computer
    @@users = {} 
  
    def initialize(username, password)
      @username = username
      @password = password
      @files = {}
      @@users[username] = password
    end
  
    def create(filename)
      time= Time.now
      @files = { filename: time }
      puts "A new file has been created."
    end
  
    def Computer.get_users
      return @@users
    end
  
    def delete(filename)
      @files.delete(filename)
      puts "The file has beend deleted."
    end
  end
  
  my_computer = Computer.new("testComputer", 1234560)