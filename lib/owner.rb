require 'pry'

class Owner
  @@all = []
  attr_reader :species
  attr_accessor :pets, :name
  
  def initialize(owner)
  @@all << self
  @pets = {fishes: [], cats: [], dogs: []}
  @species = "human"
  end

  def self.all
    @@all
  end
  
  def self.reset_all
    @@all.clear
  end
    
  def self.count
    @@all.count
  end
  
  def say_species
    message = "I am a #{self.species}."
    message
  end
  
  def buy_fish(name)
    new_fish=Fish.new
    new_fish.name=name
    
    
  end
  
  def buy_cat
    
  end
  
  def buy_dog
    
  end
  
  def walk_dogs
    dogs=self.pets[:dogs]
    dogs.each{|d| d.mood="happy"}
  end
  
  def play_with_cats
    cats=self.pets[:cats]
    cats.each{|d| d.mood="happy"}
  end
  
  def feed_fish
    fishes=self.pets[:fishes]
    fishes.each{|d| d.mood="happy"}
  end
  
  def sell_pets
    
  end
  
  def list_pets
    
  end
end