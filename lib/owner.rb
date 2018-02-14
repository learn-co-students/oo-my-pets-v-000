require 'pry'
class Owner
attr_accessor :name, :pets, :mood
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @pets = {fishes: [], cats: [], dogs: []}
  end

  def self.all
    @@all
  end

  def self.reset_all
    self.all.clear
  end

  def self.count
    @@all.count
  end

  def species
    self.name
  end


  def say_species
    "I am a #{self.name}."
  end

  def pets
    @pets
  end

  def buy_fish(name)
    new_fish = Fish.new(name)
    @pets[:fishes] << new_fish

  end

  def buy_cat(name)
    new_cat = Cat.new(name)
    @pets[:cats] << new_cat

  end

  def buy_dog(name)
    new_dog = Dog.new(name)
    @pets[:dogs] << new_dog

  end

  def walk_dogs
    @pets[:dogs].map {|i| i.mood= "happy"}
  end

  def play_with_cats
    @pets[:cats].map {|i| i.mood= "happy"}
  end

  def feed_fish
    @pets[:fishes].map {|i| i.mood= "happy"}
  end

  def sell_pets
    @pets[:fishes].map {|i| i.mood= "nervous"}
    @pets[:dogs].map {|i| i.mood= "nervous"}
    @pets[:cats].map {|i| i.mood= "nervous"}
    @pets.clear
    #binding.pry
  end


  def list_pets
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end
end

    # keeps track of the owners that have been created (FAILED - 1)
    # can count how many owners have been created (FAILED - 2)
    # can reset the owners that have been created (FAILED - 3)
    # can initialize an owner (FAILED - 4)
