class Owner
	attr_accessor  :name, :pets, :buy_fish
	attr_reader :species

	@@all = []

	def initialize(name)
		@name = name
		@species = "human"
		@pets = {:fishes => [], :dogs => [], :cats => []}
		@@all << self
	end

	def self.all
		@@all
	end

	def self.reset_all
		@@all.clear
	end

	def self.count
		@@all.size
	end

	def say_species
		"I am a #{@species}."
	end

	def buy_fish(fish_name)
		fish = Fish.new(fish_name)
		@pets[:fishes] << fish
	end

	def buy_cat(cat_name)
		cat = Cat.new(cat_name)
		@pets[:cats] << cat
	end

	def buy_dog(dog_name)
		dog = Dog.new(dog_name)
		@pets[:dogs] << dog
	end

	def walk_dogs
		pets[:dogs].collect {|dog| dog.mood = "happy"}
	end

	def play_with_cats
		pets[:cats].collect {|cat| cat.mood = "happy"}
	end

	def feed_fish
		pets[:fishes].collect {|fish| fish.mood = "happy"}
	end

	def sell_pets
		pets.each {|type,animal| animal.collect {|pet| pet.mood = "nervous"}}
		pets.clear
	end

	def list_pets
		"I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."     

	end














end