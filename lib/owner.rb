require 'pry'
require_relative 'fish.rb'

class Owner
  attr_reader :species
  attr_accessor :name, :pets
  @@owners = []
  def initialize(species)
    @species = species
    @@owners << self
    @pets = {fishes: [], cats: [], dogs: []}
  end

  #/////CLASS methods/////

  def self.all
    @@owners
  end

  def self.count
    self.all.count
  end

  def self.reset_all
    self.all.clear
  end

  #/////INSTANCE METHODS/////

  def say_species
    "I am a #{self.species}."
  end

  def buy_fish(fish)
    self.pets[:fishes] << Fish.new(fish)
  end

  def buy_cat(cat)
    self.pets[:cats] << Cat.new(cat)
  end

  def buy_dog(dog)
    self.pets[:dogs] << Dog.new(dog)
  end

  def walk_dogs
    self.pets[:dogs].each {|dog| dog.mood = 'happy'}
  end

  def play_with_cats
    self.pets[:cats].each {|cat| cat.mood = 'happy'}
  end

  def feed_fish
    self.pets[:fishes].each {|fish| fish.mood = 'happy'}
  end

  def sell_pets
    self.pets.each do |species, pets|
      pets.each {|pet| pet.mood = 'nervous'}
    end
    self.pets.clear
  end

  def list_pets
    "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
  end


end
