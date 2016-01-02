class Owner
	# code goes here
	attr_reader :specie
	attr_accessor :name
	attr_accessor :pets

	@@owners = []

	def initialize(specie)
		@specie = specie
		@@owners << self

		@pets =  {
			:fishes => [],
			:dogs => [],
			:cats => []
		}
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
	
	def species
		@specie
	end

	def say_species
		"I am a #{@specie}."
	end

	def buy_fish(name)
		@pets[:fishes] << Fish.new(name)
	end

	def buy_cat(name)
		@pets[:cats] << Cat.new(name)
	end

	def buy_dog(name)
		@pets[:dogs] << Dog.new(name)
	end

	def walk_dogs
		@pets[:dogs].map {|dog|
			dog.mood = "happy"
		}
	end

	def play_with_cats
		@pets[:cats].map {|cat|
			cat.mood = "happy"
		}
	end

	def feed_fish
		@pets[:fishes].map {|fish|
			fish.mood = "happy"
		}
	end

	def sell_pets
		@pets.map {|pet_type, pets|
			pets.map{|pet|
				pet.mood = "nervous"
			}
			pets.clear
		}
	end

	def list_pets
		"I have #{pets[:fishes].length} fish, #{pets[:dogs].length} dog(s), and #{pets[:cats].length} cat(s)."
	end
end
