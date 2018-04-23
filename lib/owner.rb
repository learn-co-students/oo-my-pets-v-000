require 'pry'
class Owner
  attr_accessor :name, :pets, :all, :mood
  attr_reader :species

  @@all = []

    def initialize(species)
      @species = species
      @name = name
      @mood = mood
      @pets = {fishes: [], cats: [], dogs: []}
      @@all << self
    end

    def say_species
      "I am a #{species}."
    end

    def buy_cat(name)
      new_pet = Cat.new(name)
      @pets[:cats] << new_pet
    end

    def buy_dog(name)
      new_pet = Dog.new(name)
      @pets[:dogs] << new_pet
    end

    def buy_fish(name)
      new_pet = Fish.new(name)
      @pets[:fishes] << new_pet
    end

    def self.all
      @@all
    end

    def self.count
      @@all.size
    end

    def self.reset_all
      @@all = []
    end

    def walk_dogs
      @pets[:dogs].collect do |d|
        d.mood = "happy"
      end
    end

    def play_with_cats
      @pets[:cats].collect do |c|
        c.mood = "happy"
      end
    end

    def feed_fish
      @pets[:fishes].collect do |f|
        f.mood = "happy"
      end
    end

    def sell_pets

      @pets.collect do |species, pet|
        pet.collect do |p|
        p.mood = "nervous"
        #binding.pry
      end
      end
      new_pets = []
      new_pets << @pets
      @pets = []
    end

    def list_pets
      "I have #{@pets[:fishes].size} fish, #{@pets[:dogs].size} dog(s), and #{@pets[:cats].size} cat(s)."
    end

end
