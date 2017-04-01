require 'pry'

class Owner
  attr_accessor :name, :pets
  attr_reader :species
  @@all_owners = []

  def initialize(name)
    @name = name
    @pets = {fishes: [], cats: [], dogs: []}
    @species = "human"
    @@all_owners << self
  end

  def say_species
    "I am a #{species}."
  end

  def self.all
    @@all_owners
  end

  def self.reset_all
    @@all_owners = []
  end

  def self.count
    @@all_owners.count
  end

  def buy_fish(name)
    name = Fish.new(name)
    pets[:fishes] << name
  end

  def buy_cat(name)
    name = Cat.new(name)
    pets[:cats] << name
  end

  def buy_dog(name)
    name = Dog.new(name)
    pets[:dogs] << name
  end

  def walk_dogs
    pets[:dogs].last.mood = "happy"
  end

  def play_with_cats
    pets[:cats].last.mood = "happy"
  end

  def feed_fish
    pets[:fishes].last.mood = "happy"
  end

  def sell_pets
    pets.each do |type, pet|
      pet.each {|pet| pet.mood = "nervous"}
    end
    self.pets = {fishes: [], cats: [], dogs: []} # why the need to use self here??????
  end

  def list_pets
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end

end
