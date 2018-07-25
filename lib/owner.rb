class Owner
  attr_accessor :pets, :name 
  attr_reader :species 
  @@owners = []
  
  def initialize(species)
    @species = species 
    @@owners << self 
    @pets = {
      fishes: [], 
      cats: [], 
      dogs: []
    }
  end 
  
  def self.all 
    @@owners
  end 
  
  def self.reset_all
    @@owners.clear 
  end 
  
  def self.count
    self.all.count
  end 

  def say_species
    "I am a #{species}."
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
    pets[:dogs].each do |dog|
      dog.mood = "happy"
    end 
  end 
  
  def play_with_cats
    pets[:cats].each do |cat|
      cat.mood = "happy"
    end 
  end 
  
  def feed_fish
    pets[:fishes].each do |fish|
      fish.mood = "happy"
    end 
  end 
  
  def sell_pets
    pets.each do |species, animal|
      animal.each do |animal|
        animal.mood = "nervous"
      end 
      animal.clear
    end 
  end 
  
  def list_pets
    "I have #{pets[:fishes].size} fish, #{pets[:dogs].size} dog(s), and #{pets[:cats].size} cat(s)."
  end 
  
end