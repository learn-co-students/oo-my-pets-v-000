require 'pry'
class Owner

@@owners = []

attr_accessor :pets, :name
attr_reader :species

def initialize(species)
  @species = species
  @pets = {fishes: [], cats: [], dogs: []}
  @@owners << self
end

def self.all
  @@owners
end

def self.count
  self.all.count
end

def self.reset_all
  self.all.clear
end

def say_species
  "I am a #{self.species}."
end

def buy_fish(name)
  pets[:fishes] << Fish.new(name)
end

def buy_dog(name)
  pets[:dogs] << Dog.new(name)
end

def buy_cat(name)
  pets[:cats] << Cat.new(name)
end

def walk_dogs
  self.pets[:dogs].each {|dog| dog.mood = "happy" }
end

def play_with_cats
  self.pets[:cats].each {|cat| cat.mood = "happy"}
end

def feed_fish
  self.pets[:fishes].each {|fish| fish.mood = "happy"}
end

def sell_pets
  pets.each do |species, animals|
    animals.each do |animal|
      animal.mood = "nervous"
    end
    animals.clear
  end
end

def list_pets
 "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
end
end
