require 'pry'

class Owner

  attr_accessor :name, :pets
  attr_reader :species

  @@all =[]

  def self.all
    @@all

  end

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
    @pets = {fishes: [], cats: [], dogs: []}
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.count
  end

  def say_species
    "I am a #{@species}."
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
    @pets[:dogs].each {|dog| dog.mood="happy"}
  end

  def play_with_cats
    @pets[:cats].each {|cat| cat.mood="happy"}
  end

  def feed_fish
    @pets[:fishes].each {|fish| fish.mood="happy"}
  end

  def sell_pets
    @pets[:dogs].each {|dog| dog.mood="nervous"}
    @pets[:cats].each {|cat| cat.mood="nervous"}
    @pets[:fishes].each {|fish| fish.mood="nervous"}
    @pets.clear
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."

  end
end
