require 'pry'

class Owner
  attr_accessor :pets, :name
  attr_reader :species
  @@Owners = []

  def initialize(species)
    @pets = {fishes: [], cats: [], dogs: []}
    @@Owners << self
    @species = species
  end

  def self.all
    @@Owners
  end

  def self.reset_all
    @@Owners.clear
  end

  def self.count
    @@Owners.size
  end

  def say_species
    "I am a #{@species}."
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
    @pets[:dogs].map do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].map {|cat| cat.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].map {|fish| fish.mood = "happy"}
  end

  def sell_pets
    pets.each do |species, animals|
      animals.each do |pet|
        pet.mood = "nervous"
      end
        animals.clear
    end
  end

  def list_pets
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end
end
