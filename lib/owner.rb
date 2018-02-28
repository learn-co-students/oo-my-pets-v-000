class Owner
  attr_accessor :pets, :name
  attr_reader :species

    @@all = []

    def initialize(species)
      @pets = {fishes: [], cats: [], dogs: []}
      @@all << self
      @species = species
    end

    # class methods
    def self.all
      @@all
    end

    def self.count
      self.all.length
    end

    def self.reset_all
      self.all.clear
    end

    # instance methods
    def say_species
      return "I am a #{species}."
    end

# pets = {fishes: [], cats: [], dogs: []}
    def buy_fish(name)
      fish = Fish.new(name)
      pets[:fishes] << fish
    end

    def buy_cat(name)
      cat = Cat.new(name)
      pets[:cats] << cat
    end

    def buy_dog(name)
      dog = Dog.new(name)
      pets[:dogs] << dog
    end

    def walk_dogs
      pets[:dogs].each do |dog|
        dog.mood = "happy"
      end
    end

    def play_with_cats
      pets[:cats].each do |cat|
        cat.mood = "happy"
      end
    end

    def feed_fish
      pets[:fishes].each do |fish|
        fish.mood = "happy"
      end
    end

	def sell_pets
		pets.each do |animal, animal_array|
			animal_array.each do |pet|
				pet.mood = "nervous"
			end
			animal_array.clear
		end
	end
	
	
# 	"I have 2 fish,3 dog(s), and 1 cat(s)."
	def list_pets
		fishes = pets[:fishes].count
		dogs = pets[:dogs].count
		cats = pets[:cats].count
		return "I have #{fishes} fish, #{dogs} dog(s), and #{cats} cat(s)."
	end
	

end
