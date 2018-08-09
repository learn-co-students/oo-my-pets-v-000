require 'pry'

class Owner
  
  @@all = []
  
  attr_accessor :pets, :name
  attr_reader :species

  def initialize(species)
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
  end
  
  def self.all
    @@all 
  end
  
  def self.count
    self.all.count
  end
  
  def self.reset_all 
    self.all.clear
  end
  
  def say_species 
    return "I am a #{self.species}."
  end
  
  def buy_fish(name)
    fish = Fish.new(name) 
    pets[:fishes] << fish
  end
  
  def buy_dog(name)
    fish = Dog.new(name) 
    pets[:dogs] << fish
  end
  
  def buy_cat(name)
    fish = Cat.new(name) 
    pets[:cats] << fish
  end
  
  def walk_dogs
    dogs = self.pets[:dogs]
    dogs.each do |dog|
      dog.mood = "happy"
    end
  end
  
  def play_with_cats
    cats = self.pets[:cats]
    cats.each do |cat|
      cat.mood = "happy"
    end
  end 
  
  def feed_fish 
    fish = self.pets[:fishes]
    fish.each do |fish|
      fish.mood = "happy"
    end
  end
  
  def list_pets 
    number_of_fish = pets[:fishes].size 
    number_of_dogs = pets[:dogs].size
    number_of_cats = pets[:cats].size 
    return "I have #{number_of_fish} fish, #{number_of_dogs} dog(s), and #{number_of_cats} cat(s)."
  end
  
  def sell_pets 
    fish = self.pets[:fishes]
    fish.each do |fish|
      fish.mood = "nervous"
    end
    cats = self.pets[:cats]
    cats.each do |cat|
      cat.mood = "nervous"
    end
    dogs = self.pets[:dogs]
    dogs.each do |dog|
      dog.mood = "nervous"
    end 
    pets.clear
    
  end
end