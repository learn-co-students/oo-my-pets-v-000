require 'pry'

class Owner
  attr_reader :species
  attr_accessor :name, :pets
  @@all =[]

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
    self.all.count
  end

  def self.reset_all
    @@all.clear
  end

  # instance methods

  def say_species
    "I am a #{@species}."
  end

  def pets
    @pets
  end

  def buy_fish(name)
    @pets[:fishes].push(Fish.new(name))
  end

  def buy_cat(name)
    @pets[:cats].push(Cat.new(name))
  end

  def buy_dog(name)
    @pets[:dogs].push(Dog.new(name))
  end

  def walk_dogs
    @pets[:dogs].map{|dog| dog.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].map{|cat| cat.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].map{|fish| fish.mood = "happy"}
  end

  def sell_pets
    @pets.each{|type, pets| pets.each{|pet| pet.mood = "nervous"}}
    @pets.clear
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end
end
