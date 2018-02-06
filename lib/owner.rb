require 'pry'
require_relative 'fish.rb'
require_relative 'dog.rb'
require_relative 'cat.rb'

class Owner
	attr_accessor :pets, :name
	attr_reader :species
  
  @@owners = []
  
  def initialize(species)
 	 @pets = {fishes: [], cats: [], dogs: []}
 	 @@owners << self
 	 @species = species
 	end

	def say_species
		"I am a #{self.species}."
	end

	def buy_fish(name)
		fish = Fish.new(name)
		@pets[:"fishes"] << fish
	end

	def feed_fish
		@pets[:"fishes"].each do |fish|
			fish.mood = "happy"
		end
	end

	def buy_cat(name)
		cat = Cat.new(name)
		@pets[:"cats"] << cat
	end

	def play_with_cats
		@pets[:"cats"].each do |cat|
			cat.mood = "happy"
		end
	end

	def buy_dog(name)
		dog = Dog.new(name)
		@pets[:"dogs"] << dog
	end

	def walk_dogs
		@pets[:"dogs"].each do |dog|
			dog.mood = "happy"
		end
	end

	def list_pets
		fish = @pets[:"fishes"].size
		dogs = @pets[:"dogs"].size
		cats = @pets[:"cats"].size
		"I have #{fish} fish, #{dogs} dog(s), and #{cats} cat(s)."
	end

	def sell_pets
		@pets.values.flatten.each {|pet| pet.mood = "nervous"}
		@pets.each {|species, pet| pet.clear}
		# binding.pry
	end

	def self.all
		@@owners
	end

	def self.count
		@@owners.size
	end

	def self.reset_all
		@@owners.clear
	end

end


owner = Owner.new("human")
owner.buy_fish("Chloe")






