require "pry"
class Owner
  # code goes here
  attr_accessor :name, :pets
  attr_reader :species
  @@all = []

  def initialize(species)
    @species = species
    @@all << self
    @pets = {:fishes=>[], :dogs=>[], :cats=>[]}
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.size
  end

  def say_species
    "I am a #{self.species}."
  end

  def pets
    @pets
  end

  def buy_fish(name)
    self.pets[:fishes] << Fish.new(name)
  end

  def buy_dog(name)
    self.pets[:dogs] << Dog.new(name)
  end

  def buy_cat(name)
    self.pets[:cats] << Cat.new(name)
  end

  def walk_dogs
    self.pets[:dogs].map{|dog| dog.mood='happy'}
  end

  def play_with_cats
    self.pets[:cats].map{|cat| cat.mood='happy'}
  end

  def feed_fish
    self.pets[:fishes].map{|fish| fish.mood='happy'}
  end

  def list_pets
    "I have #{pets[:fishes].size} fish, #{pets[:dogs].size} dog(s), and #{pets[:cats].size} cat(s)."
  end

  def sell_pets
    self.pets.each_value{|v| v.each{|p| p.mood="nervous"}}
    self.pets.clear
  end
end
