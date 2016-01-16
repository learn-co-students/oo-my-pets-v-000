require 'pry'

class Owner
	attr_accessor :name, :pets
	attr_reader :species

	@@owners =[]
	def initialize(name)
		@name = name
		@@owners << self
		@pets = {fishes: [], dogs: [], cats: []}
		@species = "human"
	end

	def self.all
		@@owners
	end

	def self.reset_all
		@@owners.clear
	end

	def self.count
		@@owners.size
	end

	def say_species
		"I am a #{species}."
	end

	def buy_fish(name)
		fish = Fish.new(name)
		@pets[:fishes] << fish

	end

	def buy_cat(name)
		cat = Cat.new(name)
		@pets[:cats] << cat

	end


	def buy_dog(name)
		dog = Dog.new(name)
		@pets[:dogs] << dog
	end

	def walk_dogs
		dog= @pets[:dogs][0]
		dog.mood = "happy"
	end

	def play_with_cats
		cat= @pets[:cats][0]
		cat.mood = "happy"
	end

	def feed_fish
		fish= @pets[:fishes][0]
		fish.mood = "happy"
	end
		
	def sell_pets
		@pets.each do |species, pets|
  		pets.each {|pet|pet.mood = "nervous"}
  		@pets[species] = []
  		end
	end

	def list_pets
		list=""
		display_name=""

		@pets.each do |species, pets|
			display_name = species.to_s
			
			if display_name.scan(/es$/) == ["es"]
				display_name = display_name.scan(/^\w+[^es]/).join
			else
				display_name = display_name.scan(/^\w+[^s]/) << "(s)"
				display_name = display_name.join
			end

			
			if species == @pets.keys.first
				list += "I have #{pets.size} #{display_name},"
			elsif species == @pets.keys.last
				list += " and #{pets.size} #{display_name}."
			else
				list += " #{pets.size} #{display_name},"
			end
		end
	list
		
	end
		


end