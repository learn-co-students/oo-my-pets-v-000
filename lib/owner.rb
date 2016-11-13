class Owner

	attr_accessor :pets, :name
	@@owners = []

	def initialize(species)
		@species = species
		@@owners << self
		@pets = {fishes: [], cats: [], dogs: []}
	end

	def species
		@species
	end

	def say_species
		return "I am a #{@species}."
	end

	def list_pets
		fish_num = self.pets[:fishes].length
		cat_num = self.pets[:cats].length
		dog_num = self.pets[:dogs].length
		return "I have #{fish_num} fish, #{dog_num} dog(s), and #{cat_num} cat(s)."
	end

	def sell_pets
		self.pets.each do |type, animals|
			animals.each do |animal|
				animal.mood = "nervous"
			end
		end
		self.pets.collect do |type, animals|
			animals.clear
		end
	end

	def buy_fish(name)
		fish = Fish.new(name)
		self.pets[:fishes]<<fish
	end

	def buy_dog(name)
		dog = Dog.new(name)
		self.pets[:dogs]<<dog
	end

	def buy_cat(name)
		cat = Cat.new(name)
		self.pets[:cats]<<cat
	end

	def walk_dogs
		self.pets.each do |type, animals|
			if type == :dogs
				animals.each do |dog|
					dog.mood = "happy"
				end
			end
		end
	end

		def play_with_cats
		self.pets.each do |type, animals|
			if type == :cats
				animals.each do |cat|
					cat.mood = "happy"
				end
			end
		end
	end


	def feed_fish
		self.pets.each do |type, animals|
			if type == :fishes
				animals.each do |fish|
					fish.mood = "happy"
				end
			end
		end
	end




	def self.all
		@@owners
	end

	def self.reset_all
		@@owners.clear
	end

	def self.count
		@@owners.length
	end


end
