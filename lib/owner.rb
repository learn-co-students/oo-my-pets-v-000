require 'pry'

class Owner
  attr_accessor :pets, :name
  attr_reader :species
  @@all = []

  def initialize(species)
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all.clear
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(name)
    self.pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    self.pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    self.pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    self.pets[:dogs].each{|d| d.mood = "happy"}
  end

  def play_with_cats
    self.pets[:cats].each{|c| c.mood = "happy"}
  end

  def feed_fish
    self.pets[:fishes].each{|f| f.mood = "happy"}
  end

  def sell_pets
    self.pets[:dogs].each{|d| d.mood = "nervous"}
    self.pets[:cats].each{|c| c.mood = "nervous"}
    self.pets[:fishes].each{|f| f.mood = "nervous"}
    self.pets.clear
  end

  def list_pets
    "I have #{self.pets[:fishes].length} fish, #{self.pets[:dogs].length} dog(s), and #{self.pets[:cats].length} cat(s)."
  end
end
