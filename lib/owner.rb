require 'pry'
class Owner
  attr_accessor :name, :pets
  attr_reader :species
  
  OWNERS = []
  
  def initialize(name)
    @species = "human"
    @pets = {fishes: [], cats: [], dogs: []}
    OWNERS << self
  end 
  
  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end 
  
  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end 
  
  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end 
  
  def walk_dogs
    @pets[:dogs].each {|dog| dog.mood = 'happy'}
  end 
  
  def play_with_cats 
    @pets[:cats].each {|cat| cat.mood = 'happy'}
  end 
  
  def feed_fish
    @pets[:fishes].each {|fish| fish.mood = 'happy'}
  end 
  
  def say_species
    #binding.pry
    "I am a #{@species}."
  end 
  
  def self.all 
    OWNERS
  end 
  
  def self.count 
    OWNERS.size
  end 
  
  def self.reset_all
    OWNERS.clear
  end 
  
  def sell_pets
    @pets.each do |species, pet|
      pet.each do |pet|
        pet.mood = 'nervous'
      end 
      pet.clear
    end 
  end 
  
  def list_pets
    #binding.pry
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end 
end