require 'pry'
class Owner
  attr_accessor :name, :pets
  attr_reader :species
  @@all = []

  def initialize(name)
    @name = name
    @pets = {fishes: [], cats: [], dogs: []}
    @species = "human"
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all = []
  end

  def say_species
    "I am a #{@species}."
  end

  def pets
    @pets
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
    self.pets[:dogs].map{|dog| dog.mood = "happy"}
  end

  def play_with_cats
    self.pets[:cats].map{|cat| cat.mood = "happy"}
  end

  def feed_fish
    self.pets[:fishes].map{|fish| fish.mood = "happy"}
  end

  def sell_pets
    pets.each{|k, v| v.each{|pet| pet.mood = "nervous"}}
    pets.clear
  end

  def list_pets
    fishes = @pets[:fishes].length
    dogs = @pets[:dogs].length
    cats = @pets[:cats].length
    "I have #{fishes} fish, #{dogs} dog(s), and #{cats} cat(s)."
  end

end
