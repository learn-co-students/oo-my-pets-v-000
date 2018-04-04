require 'pry'

class Owner
attr_accessor :name, :pets
attr_reader :species 

@@all = []

def self.all 
  @@all
end

def self.count 
  self.all.count
end

def self.reset_all 
  @@all.clear
end

def initialize(species)
  @species = species 
  @@all << self
  @pets = {fishes: [], dogs: [], cats: []}
end

def say_species
  "I am a #{self.species}."
end


def buy_fish(name)
  new_fish = Fish.new(name)
  self.pets[:fishes] << new_fish
end

def buy_cat(name)
  new_cat = Cat.new(name)
  self.pets[:cats] << new_cat
end

def buy_dog(name)
  new_dog = Dog.new(name)
  self.pets[:dogs] << new_dog
end

def walk_dogs
  self.pets[:dogs].map do |dog|
    dog.mood = "happy"
  end
end

def play_with_cats
  self.pets[:cats].map do |cat|
    cat.mood = "happy"
  end
end

def feed_fish
  self.pets[:fishes].map do |fish|
    fish.mood = "happy"
  end
end

def sell_pets
  array = self.pets.values.flatten 
  array.map do |pet_names|
    pet_names.mood = "nervous"
  end
  self.pets.clear
end

def list_pets
  "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
end
  
end