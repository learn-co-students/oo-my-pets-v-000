class Owner
  # code goes here
  @@all = []

    attr_accessor :pets, :name
    attr_reader :species

    def initialize(species)
      @species = species
      @pets =
      {
        fishes: [],
        cats: [],
        dogs: []
      }
      @@all << self

    end

    def buy_fish(name)
      new_pet = Fish.new(name)
      @pets[:fishes] << new_pet
    end

    def buy_cat(name)
      new_pet = Cat.new(name)
      @pets[:cats] << new_pet
    end

    def buy_dog(name)
      new_pet = Dog.new(name)
      @pets[:dogs] << new_pet
    end

    def walk_dogs
      @pets[:dogs].each do |dog|
        dog.mood = "happy"
      end
    end

    def play_with_cats
      @pets[:cats].each do |cat|
        cat.mood = "happy"
      end
    end

    def feed_fish
      @pets[:fishes].each do |fish|
        fish.mood = "happy"
      end
    end

    def sell_pets

      @pets.each do |species, pets|
        pets.each do |pet|
          pet.mood = "nervous"
        end

      end

      @pets =
      {
        fishes: [],
        cats: [],
        dogs: []
      }

    end

    def list_pets

      return "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."

    end

    def say_species
      return "I am a #{@species}."
    end

    def self.all
      @@all
    end

    def self.count
      @@all.length
    end

    def self.reset_all
      @@all = []
    end


end
