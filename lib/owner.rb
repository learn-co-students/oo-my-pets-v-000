require 'pry'
class Owner
  attr_accessor :pets, :name
  attr_reader :species
  @pets = {fishes: [], cats: [], dogs: []}
  @@all = []
  
  def initialize(species)
    @pets = {fishes: [], cats: [], dogs: []}
    @species = species
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@all.size
  end
  
  def self.reset_all
    self.all.clear
  end
  
  def say_species
    "I am a #{species}."
  end
  
  def buy_fish(name)
    
    self.pets.first.name
  end
  
  def buy_cat(name)
    
  end
  
  def buy_dog(name)
    
  end
  
end