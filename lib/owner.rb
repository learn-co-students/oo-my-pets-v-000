require 'pry'
class Owner
attr_accessor :pets, :name
attr_reader :species
@@all = []

def initialize(name)
  #binding.pry
  @name =  name
  @pets = {fishes: [],cats: [], dogs: []}
  @species = "human"
  @@all << self

 end

 def self.all
   @@all
 end

 def self.reset_all
  self.all.clear
 end

 def self.count
   self.all.count
 end

 def say_species
    "I am a #{@species}."
 end

 def buy_fish(name)
   pets[:fishes] << Fish.new(name)
 end

 def buy_cat(name)
   pets[:cats] << Cat.new(name)
 end

 def buy_dog(name)
   pets[:dogs] << Dog.new(name)
 end

def walk_dogs
  #binding.pry
  pets[:dogs].each {|dog| dog.mood = "happy"}
end

def play_with_cats
  pets[:cats].each {|cat| cat.mood = "happy"}
end

def feed_fish
  pets[:fishes].each {|fish| fish.mood = "happy"}
end

def sell_pets
 #binding.pry
 pets.each_value do |pet|
   pet.each {|p| p.mood = "nervous"}
 end
 pets.clear
end

def list_pets
  "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."

end

end
