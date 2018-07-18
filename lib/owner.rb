require 'pry'

class Owner
  attr_accessor :name, :pets
  @@all = []
  
  def initialize(name)
    @name = name
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
  end
  
  def self.all 
    @@all 
  end
  
  def self.count
    @@all.size

  end
  
  def self.reset_all 
    @@all.clear
  end
  
  def species
    @specie = "human"
  end
  
  def say_species
    "I am a human."
  end
  
  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end 
  
  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end 
  
  def buy_dog (name)
    @pets[:dogs] << Dog.new(name)
  end
  
  def walk_dogs
    @pets[:dogs].each {|x| x.mood = "happy"}
  end
  
  def play_with_cats
    @pets[:cats].each {|x| x.mood = "happy"}
  end 
  
  def feed_fish 
    @pets[:fishes].each {|x| x.mood = "happy"}
  end
  
  def sell_pets
    @pets[:dogs].each {|x| x.mood = "nervous"}
    @pets[:cats].each {|x| x.mood = "nervous"}
    @pets[:fishes].each {|x| x.mood = "nervous"}
    @pets.clear
  end
  
  def list_pets
    "I have #{@pets[:fishes].size} fish, #{@pets[:dogs].size} dog(s), and #{@pets[:cats].size} cat(s)."
  end
end