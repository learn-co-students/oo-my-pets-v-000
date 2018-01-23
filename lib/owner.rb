require 'pry'
class Owner
  @@all = []
  attr_accessor :name, :pets
  attr_reader :species


  def initialize(species = "Human")
    @species = species
    @@all << self
    @pets = {fishes: [], cats: [], dogs: []}    
  end

  #class methods

  def self.all
    @@all
  end

  def self.count
    @@all.size
  end

  def self.reset_all
    @@all.clear
  end

  #instance methods
  def say_species
    "I am a #{self.species}."
  end

  def buy_fish(name)
    newFish = Fish.new(name)
    self.pets[:fishes] << newFish

  end

  def buy_cat(name)
    newCat = Cat.new(name)
    self.pets[:cats] << newCat
  end

  def buy_dog(name)
    newDog = Dog.new(name)
    self.pets[:dogs] << newDog
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
    self.pets.each {|key, value| value.each {|v| v.mood = "nervous" }}
    self.pets.clear    
  end

  def list_pets
    fishCount = self.pets[:fishes].size 
    dogCount = self.pets[:dogs].size
    catCount = self.pets[:cats].size
    "I have #{fishCount} fish, #{dogCount} dog(s), and #{catCount} cat(s)."
  end



end