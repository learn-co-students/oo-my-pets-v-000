require 'pry'
class Owner
  attr_accessor :name, :pets
  attr_reader :species

  @@all = Array.new

  def initialize(species)
    @name = name
    @species = species
    @pets = {
      fishes: [],
      cats: [],
      dogs: []
    }
    @@all << self
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
    "I am a #{self.species}."
  end

  def buy_fish(name)
    fish = Fish.new(name)
    self.pets[:fishes] << fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    self.pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    self.pets[:dogs] << dog
  end

  def walk_dogs
    self.pets[:dogs].each {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    self.pets[:cats].each {|cat| cat.mood = "happy"}
  end

  def feed_fish
    self.pets[:fishes].each {|fish| fish.mood = "happy"}
  end

  def sell_pets
    self.pets[:dogs].each {|dog| dog.mood = "nervous"}
    self.pets[:dogs].clear
    self.pets[:cats].each {|cat| cat.mood = "nervous"}
    self.pets[:cats].clear
    self.pets[:fishes].each {|fish| fish.mood = "nervous"}
    self.pets[:fishes].clear
  end

  def list_pets
    "I have #{self.pets[:fishes].size} fish, #{self.pets[:dogs].size} dog(s), and #{self.pets[:cats].size} cat(s)."
  end
end
