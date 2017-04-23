
class Owner

  attr_accessor :name, :pets
  attr_reader :species
	@@all = []

	def initialize(name, species = "human")
    @name = name
    @species = species
		@@all << self
    @pets = {fishes: [], cats: [], dogs: []}
	end

  	def self.all
  		@@all
  	end

    def self.reset_all
      @@all.clear
    end

    def self.count
      @@all.length
    end

    def say_species
      return "I am a #{@species}."
    end

    def buy_fish(name)
        name = Fish.new(name)
        @pets[:fishes] << name
    end

    def buy_cat(name)
        name = Cat.new(name)
        @pets[:cats] << name
    end

    def buy_dog(name)
        name = Dog.new(name)
        @pets[:dogs] << name
    end

    def walk_dogs
      @pets[:dogs].each {|dog| dog.mood = "happy"}
    end

    def play_with_cats
      @pets[:cats].each {|cat| cat.mood = "happy"}
    end

    def feed_fish
      @pets[:fishes].each {|fish| fish.mood = "happy"}
    end

    def sell_pets
      @pets[:fishes].each {|fish| fish.mood = "nervous"}
      @pets[:cats].each {|cat| cat.mood = "nervous"}
      @pets[:dogs].each {|dog| dog.mood = "nervous"}
      self.pets.clear
    end

    def list_pets
      return "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
    end

end
