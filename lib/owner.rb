require 'pry'

class Owner

  attr_accessor :name, :pets
  attr_reader :species

@@all = []

<<<<<<< HEAD
def initialize(species)
    @name = name
    @species = species
    @@all << self
    @pets = {fishes: [], cats: [], dogs: []}
=======
  def initialize(species)
    @pets = {fishes: [], cats: [], dogs: []}
    @species = species
    @@all << self
>>>>>>> 73e687bce1cd8f5f2ee1fefc87238184a1c33634
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
<<<<<<< HEAD
    fish = Fish.new(name)
    pets[:fishes] << fish
=======
    pets[:fishes] << Fish.new(name)
>>>>>>> 73e687bce1cd8f5f2ee1fefc87238184a1c33634
  end

  def buy_cat(name)
    pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
<<<<<<< HEAD
    pets.each do |species, animals|
      animals.each do |pet|
        pet.mood= "happy"
      end
=======
    pets[:dogs].each do |dog|
      dog.mood= "happy"
>>>>>>> 73e687bce1cd8f5f2ee1fefc87238184a1c33634
    end
  end

  def play_with_cats
<<<<<<< HEAD
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
=======
    pets[:cats].each do |cat|
      cat.mood= "happy"
    end
    end

    def feed_fish
      pets[:fishes].each do |fish|
        fish.mood= "happy"
      end
    end

    def sell_pets
      pets.each do |species, animals|
        animals.each do |pet|
          pet.mood= "nervous"
        end
        animals.clear
          end
    end

    def list_pets
      "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
    end
>>>>>>> 73e687bce1cd8f5f2ee1fefc87238184a1c33634
end
