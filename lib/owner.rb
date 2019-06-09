require 'pry'
class Owner
  attr_accessor :pets, :name
  attr_reader :species 
  
  @@all = []
  
  def initialize(species) 
    @species = species 
    @pets  = {dogs:[], cats:[], fishes:[]} 
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  def self.count 
    self.all.size 
  end 
  
  def self.reset_all 
    self.all.clear 
  end 
  
  def say_species
    "I am a #{@species}."
  end
  
  def buy_dog(name) 
    @pets[:dogs] << Dog.new(name)
  end 
  
  def buy_cat(name) 
    @pets[:cats] << Cat.new(name)
  end
  
  def buy_fish(name) 
    @pets[:fishes] << Fish.new(name)
  end
  
  def walk_dogs 
    @pets[:dogs].each{|dog| dog.mood = "happy"}
  end
  
  def play_with_cats 
    @pets[:cats].each{|cat| cat.mood = "happy"}
  end 

  def feed_fish 
    @pets[:fishes].each{|fish| fish.mood = "happy"}
  end
  
  def list_pets
    "I have #{@pets[:fishes].size} fish, #{@pets[:dogs].size} dog(s), and #{@pets[:cats].size} cat(s)."
  end
  
  def sell_pets
    @pets.each{|type, pets| pets.each{|pet| pet.mood = "nervous"}}
    @pets.clear
  end
  
  end 