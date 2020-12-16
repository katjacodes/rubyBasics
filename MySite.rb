rails new MySite

bundle install

rails server

# Then I checked http://localhost:8000. Everything fine

rails generate controller Pages

# And the next step is where I run into problems:

app/controllers/pages_controller.rb

# This is what I get back:

zsh: permission denied: app/controllers/pages_controller.rb