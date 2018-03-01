require 'pry'

class Owner
  # code goes here
  #Owner abilities: 
  #- knows about ALL pets
  #- can buy a pet 
  #- set name of pet 
  #- change pet's mood through activities 
  #- sell all pets 
  
  #pets hash and owner name attributes
  attr_accessor :pets, :name, :mood
  
  #the following attr_readers can't be changed!
  attr_reader :species 
  
  attr_writer :mood
  
  #class variable that keeps track of all Owner instances
  @@all = []
  
  #initialize new owners with a species and a name 
  def initialize(species)
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
    @name = name
    @@all << self 
  end 
  
  #class method that shows @@all
  def self.all
    @@all
  end 
  
  #class method that returns number of objects in @@all
  def self.count
    self.all.length
  end 
  
  #class method that resets @@all 
  def self.reset_all
    self.all.clear 
  end
  
  def say_species
    "I am a #{self.species}."
  end 
  
  #create a new instance of Fish and assign the new instance to new_fish. If new_fish's class == Fish, shovel in the instance into the pets' hash's fishes key.
  def buy_fish(name)
    new_fish = Fish.new(name)
    if new_fish.class == Fish
      @pets[:fishes] << new_fish
    end 
  end 
  
  def buy_cat(name)
    new_cat = Cat.new(name)
    if new_cat.class == Cat 
      @pets[:cats] << new_cat 
    end 
  end 
  
  def buy_dog(name)
    new_dog = Dog.new(name)
    if new_dog.class == Dog
      @pets[:dogs] << new_dog
    end 
  end 
  
  def walk_dogs 
    self.pets[:dogs].each do |dog|
      dog.mood = "happy"
    end 
    #binding.pry
  end 
  
  def play_with_cats
    self.pets[:cats].each do |cat|
      cat.mood = "happy"
    end 
  end 
  
  def feed_fish
    self.pets[:fishes].each do |fish|
      fish.mood = "happy"
    end 
  end 
  
  def sell_pets
    self.pets.each do |type, pets| #iterate through pets hash (|fishes/cats/dogs, multiple pet objects|)
      pets.each do |animal| # |each indiv pet object|
      animal.mood = "nervous"
      end
    end 
    self.pets.clear 
  end 
  
  def list_pets
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
    #binding.pry
  end
   

end