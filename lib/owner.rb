require 'pry'
require_relative 'cat'
require_relative 'dog'
require_relative 'fish'

class Owner
  # code goes here
  attr_reader :species
  attr_accessor :name, :pets

  @@all = []

  def initialize(species)
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
  end

  def self.all
     @@all
  end

  def self.reset_all
    @@all.clear
    @@all
  end

  def self.count
    @@all.count
  end

  def buy_fish(name)
    new_fish = Fish.new(name)
    self.pets[:fishes].push(new_fish)
  end

  def buy_cat(name)
    new_cat = Cat.new(name)
    self.pets[:cats].push(new_cat)
  end

  def buy_dog(name)
    new_dog = Dog.new(name)
    self.pets[:dogs].push(new_dog)
  end

  def say_species
    "I am a #{self.species}."
  end

  def walk_dogs
    self.pets[:dogs].each{|dog| dog.mood = "happy"}
  end

  def play_with_cats
    self.pets[:cats].each{|cat| cat.mood = "happy"}
  end

  def feed_fish
    self.pets[:fishes].each{|fish| fish.mood = "happy"}
  end

  def sell_pets
    self.pets.each do |type, animals|
     animals.each do |pet|
       pet.mood = "nervous"
     end
    end
    self.pets.clear
  end

  def list_pets
    "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
  end

end
