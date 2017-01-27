require 'pry'

class Owner

  attr_accessor :name, :pets
  attr_reader :species

def initialize(species)
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
    @@all.count
  end

  def say_species
    "I am a #{species}."
  end

  def buy_fish(name)
    fish = Fish.new(name)
    pets[:fishes] << fish
  end

  def buy_cat(name)
    pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    pets.each do |species, animals|
      animals.each do |pet|
        pet.mood= "happy"
      end
    end
  end

  def play_with_cats
    pets.each do |species, animals|
      animals.each do |pet|
        pet.mood= "happy"
      end
    end
  end

  def feed_fish
    pets.each do |species, animals|
      animals.each do |pet|
        pet.mood= "happy"
      end
    end
  end

  def sell_pets
    @pets.each do |species, animals|
      animals.each do |pet|
        pet.mood= "nervous"
      end
      animals.clear
    end
  end

  def list_pets
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end
end
