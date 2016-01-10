require 'pry'

class Owner

	attr_reader :species	
	attr_accessor :name, :pets	

	@@all = []

	def initialize(species)
		@species = species
		@@all << self
		@pets = {fishes: [], dogs: [], cats: []} 
	end

	def self.all
		@@all
	end

	def self.reset_all
		@@all = []
	end

	def self.count
		@@all.length
	end

	def say_species
		"I am a #{self.species}."
	end

	def buy_fish(name)
		fish = Fish.new(name)
		self.pets[:fishes] << fish
	end

	def buy_cat(name)
		cat = Cat.new(name)
		self.pets[:cats] << cat
	end

	def buy_dog(name)
		dog = Dog.new(name)
		self.pets[:dogs] << dog
	end

	def walk_dogs
		self.pets[:dogs].collect do |dog|
			dog.mood = "happy"
		end		
	end

	def play_with_cats
		self.pets[:cats].collect do |cat|
			cat.mood = "happy"
		end
	end

	def feed_fish
		self.pets[:fishes].collect do |fish|
			fish.mood = "happy"
		end
	end

	def sell_pets
		self.pets.collect do |type, pets|
			pets.collect do |pet|
				pet.mood = "nervous"
			end
			self.pets[type] = []
		end
	end

	def list_pets
		"I have #{self.pets[:fishes].length} fish, #{self.pets[:dogs].length} dog(s), and #{self.pets[:cats].length} cat(s)."
	end
end
