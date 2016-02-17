require 'pry'

class Owner

	@@owners = []

   	attr_accessor :name, :pets
 	attr_reader :species

 	def self.all
 		@@owners
 	end 	

 	def initialize(species)
 		@species = species
 		species = "human"
 		@@owners << self
 		@pets = {:fishes => [], :dogs => [], :cats => []}
 	end

 	def self.count
 		@@owners.size
 	end

 	def self.reset_all
 		@@owners.clear
 	end

 	def say_species
 		"I am a #{species}."
 	end

 	def buy_fish(name)
 		fishyfrand = Fish.new(name)
 		@pets[:fishes] << fishyfrand
 	end

	 def buy_cat(name)
 		kittyfrand = Cat.new(name)
 		@pets[:cats] << kittyfrand
 	end

 	def buy_dog(name)
 		puppyfrand = Dog.new(name)
 		@pets[:dogs] << puppyfrand
 	end

 	def walk_dogs
 		pets[:dogs].each do |happy|
 			happy.mood = "happy"
 		end
 	end

 	def play_with_cats
 		pets[:cats].each do |cat|
 			cat.mood = "happy"
 		end
 	end

 	def feed_fish
 		pets[:fishes].each do |fishy|
 			fishy.mood = "happy"
 		end
 	end

 	def sell_pets
 		pets.each do |pet, petarray|
 			petarray.each do |animal|
 				animal.mood = "nervous"
 			end
 		end
 		self.pets = {:fishes => [], :dogs => [], :cats => []}
 	end

 	def list_pets
 		"I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
 	end

end