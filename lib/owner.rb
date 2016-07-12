require 'pry'

class Owner
  
  attr_accessor :name, :pets
  attr_reader :species
  
  @@all = []
  @@count = 0
  
	def initialize(name)
		@name = name
		@@all << self
		@pets = {fishes: [], cats: [], dogs: []}
		@@count += 1
		@species = "human"
	end
	
	def self.all
		@@all
	end
	
	def self.count
		@@count
	end
	
	def self.reset_all
		@@count = 0
	end
	
	def say_species
		"I am a #{self.species}."
	end
	
	def buy_fish(fish)
		bubbles = Fish.new(fish)
		self.pets[:fishes] << bubbles
	end
	
	def buy_cat(cat)
		crook = Cat.new(cat)
		self.pets[:cats] << crook
	end
	
	def buy_dog(dog)
		snuff = Dog.new(dog)
		self.pets[:dogs] << snuff
	end
	
	def walk_dogs
		self.pets[:dogs][0].mood = "happy"
	end
	
	def play_with_cats
		self.pets[:cats][0].mood = "happy"
	end
	
	def feed_fish
		self.pets[:fishes][0].mood = "happy"
	end
	
	def sell_pets
		self.pets.each do |species,pets|
			pets.each {|x| x.mood = "nervous"}			
		end
		self.pets = {}
	end
	
	def list_pets
		"I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
	end
	
end
