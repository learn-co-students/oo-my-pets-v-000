class Owner
	require 'pry'
  # code goes here
  	attr_accessor :name, :owner_count, :pets
  	attr_reader :species
  	@@all = []
  	@owner_count = 0

  	def initialize(name)
  	@name = name
  	@@all << self
  	@owner_count = @@all.size
  	@pets = {:fishes => [], :dogs => [], :cats => []}
	end

	# class methods
	def self.all
		@@all
	end
	def self.reset_all
		@@all = []
	end
	def self.count 
		@@all.size
	end

	#instance methods

	def species
		@species = "human"
	end

	def say_species 
		"I am a human."
	end
	def pets
		@pets 
	end

	def buy_fish(name)
		pet = Fish.new(name)
		
		@pets[:fishes] << pet
	end
	
	def buy_cat(name)
		pet = Cat.new(name)
		
		@pets[:cats] << pet
	end
	def buy_dog(name)
		pet = Dog.new(name)
		
		@pets[:dogs] << pet
		
	end
	# iterate through hash to change each pet's mood to happy
	def walk_dogs
		@pets[:dogs].map {|m|m.mood = "happy"}
	end

	def play_with_cats
		@pets[:cats].map {|m|m.mood = "happy"}
	end

	def feed_fish
		@pets[:fishes].map {|m|m.mood = "happy"}

	end

	# itererate through hash to change ALL pet's moods to nervous.
	def sell_pets
		#binding.pry
		@pets.each do |species, pets| pets.each do |pet| pet.mood = "nervous"end end
		@pets = {}
	end

	def list_pets
		"I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
		#binding.pry
	end
end