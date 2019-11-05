class Zoo
	attr_accessor :name, :location, :animals
	@@all = []

	def initialize(name, location)
		@name = name
		@location = location
		@animals = []
		@@all << self
	end

	def get_animal(species, nickname, weight)
		new_animal = Animal.new(species, nickname, weight)
		new_animal.zoo == self
		@animals << new_animal
	end

	def animal_species
		Animal.all.select {|animal| animal.zoo == self}.map {|animal| animal.species}
	end

	def find_by_species(animal_species)
		Animal.all.select {|animal| animal.zoo == self}.select {|animal| animal.species == animal_species}
	end

	def animal_nicknames
		Animal.all.select  {|animal| animal.zoo == self}.map {|animal| animal.nickname}
	end

	def self.all
		@@all
	end

	def self.find_by_location(location)
		@@all.select {|zoo| zoo.location == location}
	end



end
