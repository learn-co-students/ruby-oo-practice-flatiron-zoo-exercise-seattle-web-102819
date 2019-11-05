require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here

bronx_zoo = Zoo.new("Bronx Zoo", "Bronx")
basel_zoo = Zoo.new("Basel Zoo", "Basel")
toronto_zoo = Zoo.new("Toronto Zoo", "Toronto")

bronx_zoo.get_animal("Bear", "Mr. Brown", 800)
basel_zoo.get_animal("Lion", "Nala", 300)
toronto_zoo.get_animal("Owl", "Snow", 5)








binding.pry
puts "done"
