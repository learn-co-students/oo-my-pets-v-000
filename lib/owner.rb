require 'pry'

class Owner
  attr_accessor :pets, :name
  attr_reader :species

  @@all = []

  def self.all
    @@all
  end

  def initialize(species)
    @species = species
    @@all << self
    @pets = {fishes: [], cats: [], dogs: []}
  end

  def self.reset_all
    @@all = []
  end

  def self.count
    @@all.count
  end

  def say_species
    self.species
    return "I am a #{species}."
  end

  def buy_fish(name)
    new_guy = Fish.new(name)
    #binding.pry
    @pets[:fishes] << new_guy
  end

   def buy_cat(name)
    new_guy = Cat.new(name)
    #binding.pry
    @pets[:cats] << new_guy
  end

   def buy_dog(name)
    new_guy = Dog.new(name)
    #binding.pry
    @pets[:dogs] << new_guy
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
    pets.each do |type,pets|
      pets.each do |animal|
        animal.mood = "nervous"
      end
      pets.clear
    end
  end

  def list_pets
    return "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end

end