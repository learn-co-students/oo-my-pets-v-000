require 'pry'

class Owner
  attr_accessor :name, :pets, :mood
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
  @@all.count
end 

def self.reset_all
  @@all.clear
end

def say_species
  return "I am a #{@species}."
end 

def buy_fish(name)
  fish = Fish.new(name)
  @pets[:fishes] << fish
  fish.owner = self
end 

def buy_dog(name)
  dog = Dog.new(name)
  @pets[:dogs] << dog
  dog.owner = self
end 

def buy_cat(name)
  cat = Cat.new(name)
  @pets[:cats] << cat
  cat.owner = self
end 

def walk_dogs
  doggos = @pets[:dogs]
  doggos.each do |dogs|
    dogs.mood = "happy"
  end 
  
  
end 

def play_with_cats
  kitties = @pets[:cats]
  kitties.each do |cats|
    cats.mood = "happy"
  end 
end 

def feed_fish
  fishes = @pets[:fishes]
  fishes.each do |fish|
    fish.mood = "happy"
end 
end 

def sell_pets
    fishes = @pets[:fishes]
  fishes.each do |fish|
    fish.mood = "nervous"
  end 
   kitties = @pets[:cats]
  kitties.each do |cats|
    cats.mood = "nervous"
  end 
   doggos = @pets[:dogs]
  doggos.each do |dogs|
    dogs.mood = "nervous"
  end 
  
@pets = {fishes: [], cats: [], dogs: []}
end 

def list_pets
  return "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
end 


end 