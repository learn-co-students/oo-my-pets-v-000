require 'pry'
class Owner
  # code goes here
  attr_accessor :pets, :owner, :fish, :cat, :dog, :name
  attr_reader :species
  @@all = []


  def initialize(pets)
    @pets = {fishes: [], cats: [], dogs: []}
    @species = "human"
    @name = name
    @@all << self
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

  def self.all
    @@all
  end

  def save
    self.class.all << self
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

  def walk_dogs
    pets[:dogs].each {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    pets[:cats].each {|cat| cat.mood = "happy"}
  end

  def feed_fish
    pets[:fishes].each {|fish| fish.mood = "happy"}
  end

  def sell_pets
    pets[:dogs].each {|dog| dog.mood = "nervous"}
    pets[:cats].each {|cat| cat.mood = "nervous"}
    pets[:fishes].each {|fish| fish.mood = "nervous"}
    @pets.clear
  end

  def list_pets
    dogs_count = pets[:dogs].count
    cats_count = pets[:cats].count
    fishes_count = pets[:fishes].count
    "I have #{fishes_count} fish, #{dogs_count} dog(s), and #{cats_count} cat(s)."
  end

end
