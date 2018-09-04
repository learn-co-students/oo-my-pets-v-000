require 'pry'

class Owner
  attr_accessor :pets, :name
  attr_reader :species

  OWNERS = []

  def self.all
    OWNERS
  end

  def self.count
    OWNERS.size
  end

  def self.reset_all
    OWNERS.clear
  end

  def initialize(species)
    @pets = {fishes: [], cats: [], dogs: []}
    @species = species
    OWNERS << self
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(name)
    pets[:fishes] << Fish.new(name)
  end
  
  def buy_cat(name)
    pets[:cats] << Cat.new(name)
  end
  
  def buy_dog(name)
    pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    pets[:dogs].each do |pet_objects|
      pet_objects.mood = "happy"
    end
  end
  
  def play_with_cats
    pets[:cats].map {|cat| cat.mood = "happy"}
  end
  
  def feed_fish
    pets[:fishes].map {|fish| fish.mood = "happy"}
  end
  
  def sell_pets
    pets.each do |type, pets|
      pets.each {|pet| pet.mood = "nervous"}
    end
    pets.clear
  end
  
  def list_pets
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end
end
