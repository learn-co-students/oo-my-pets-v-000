require 'pry'
class Owner
  # code goes here
  OWNERS = []

  attr_accessor :name, :pets
  attr_reader :species

    def self.all
      OWNERS
    end

    def self.reset_all
      OWNERS.clear
    end

    def self.count
      OWNERS.size
    end


    def initialize(species)
      @species = species
      OWNERS << self
      @pets = {:fishes => [], :dogs => [], :cats => []}
    end

    def say_species
     "I am a #{species}."
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
      self.pets[:dogs].each do |dog|
          dog.mood = "happy"
      end
    end

    def play_with_cats
      self.pets[:cats].each do |cat|
        cat.mood = "happy"
      end
    end

    def feed_fish
      self.pets[:fishes].each do |fish|
        fish.mood = "happy"
      end
    end

    def sell_pets
      self.pets.each do |key, value|
        value.each do |animals|
          animals.mood = "nervous"
        end
        value.clear
      end
    end

    def list_pets
      "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
    end

end
