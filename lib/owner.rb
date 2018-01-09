require 'pry'

class Owner
  attr_accessor :name, :pets
  attr_reader :species

  ### Class Scope ###

  @@owners = []

  def self.all
    @@owners
  end

  def self.count
    self.all.size
  end

  def self.reset_all
    self.all.clear
  end

  ### Instance Scope ###

  def initialize(species)
    # @name = name
    @pets = {fishes: [], cats: [], dogs: []}
    @species = species
    @@owners << self
  end

  def say_species
    "I am a #{species}."
  end

  def pets
    @pets
  end

  ### buy_pets methods ###

  def buy_fish(name)
    fish = Fish.new(name)
    fish.owner = self
    @pets[:fishes] << fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    cat.owner = self
    self.pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    dog.owner = self
    @pets[:dogs] << dog
  end

  ### pet interactions ###

  def walk_dogs
    self.pets[:dogs].each {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    self.pets[:cats].each {|cat| cat.mood = "happy"}
  end

  def feed_fish
    self.pets[:fishes].each {|fish| fish.mood = "happy"}
  end

  ### sell/list pets methods ###

  def sell_pets
    self.pets[:dogs].each {|pet| pet.mood = "nervous"}
    self.pets[:cats].each {|pet| pet.mood = "nervous"}
    self.pets[:fishes].each {|pet| pet.mood = "nervous"}
    self.pets.clear
  end

  def list_pets
    fish = self.pets[:fishes].size
    dogs = self.pets[:dogs].size
    cats = self.pets[:cats].size
    "I have #{fish} fish, #{dogs} dog(s), and #{cats} cat(s)."
  end


end
