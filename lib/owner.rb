require 'pry'
class Owner
  attr_accessor :pets, :name
  attr_reader :species
  
  @@all = []
  
  def self.all
    @@all
  end
  
  def self.count
    @@all.count
  end
  
  def self.reset_all
    @@all.clear
  end
  
  def initialize(species)
    @species = species
    pets = {cats: [], dogs: [], fishes: []}
    @@all << self
  end

  def say_species
    "I am a #{species}."
  end

  def name
    @name
  end 
  
  def buy_fish
    Fish.initialize(name, mood = "nervous")
  end
  
  def buy_cat
    Cat.initialize(name, mood = "nervous")
  end

  def buy_dog
    Dog.initialize(name, mood = "nervous")
    
  end

  def walk_dogs
    pets
  end

  def play_with_cats
  end

  def feed_fish
  end

  def sell_pets
    pets.clear
    pets.each {|pet| pet.mood = "nervous"}
    pets
  end

  def list_pets
    pets
  end
  
end 


  
  