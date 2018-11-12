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
  
  def buy_fish
    
  end
end