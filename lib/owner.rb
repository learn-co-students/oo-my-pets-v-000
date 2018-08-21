# An owner will know about all its pets, be able to buy a pet, set the name of a pet
# (which the pet can't change, because that would be weird), change a pet's mood through
# walking, feeding, or playing with it, and sell all of its pets (for when it moves to that tiny NYC studio after college).
require 'pry'

class Owner
  # code goes here
  attr_accessor :pets

  @@all = []
  @@count = 0

  def initialize(species)
    @@all << self
    @@count += 1

    @pets = {fishes: [], cats: [], dogs: []}
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@count = 0
  end

  def self.count
    @@count
  end

  def species
    "human"
  end

  def say_species
    "I am a #{species}."
  end

  def name=(name)
    @name = name
  end

  def name
    @name
  end

  def pets
    @pets
  end

  # Make a new instance of the appropriate pet, initializing it with that name.
  # Associate that new pet instance to the owner by adding it to the appropriate array-value of
    # the @pets hash stored in the pets attr_accessor.
  # @pets = {fishes: [], cats: [], dogs: []}
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
    @pets[:dogs].each {|dog| dog.mood=("happy")}
  end

  def play_with_cats
    @pets[:cats].each {|cat| cat.mood=("happy")}
  end

  def feed_fish
    @pets[:fishes].each {|fish| fish.mood=("happy")}
  end

  def sell_pets
    @pets[:dogs].each {|dog| dog.mood=("nervous")}
    @pets[:cats].each {|cat| cat.mood=("nervous")}
    @pets[:fishes].each {|fish| fish.mood=("nervous")}

    @pets = {fishes: [], cats: [], dogs: []}
  end

  def list_pets
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end
end
