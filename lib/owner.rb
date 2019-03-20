class Owner
  attr_reader :species, :say_species
  attr_accessor :name, :pets
  
  
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @species = "human"
    @say_species = "I am a human."
    @pets = {fishes: [], cats: [], dogs: []}
  end 
 
  
  def self.all 
    @@all 
  end 
 
  
  def self.count
    @@all.length
  end 
 
  
  def self.reset_all
    @@all.clear
  end 
 
  
  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end 
 
  
  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end 
 
  
  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end 
 
  
  def walk_dogs
    @pets[:dogs].each do |dog|
      dog.mood = "happy"
    end 
  end 
 
  
  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood = "happy"
    end 
  end 
 
  
  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood = "happy"
    end 
  end 
 
  
  def sell_pets
    @pets.each do |pet_type, pet_array|
    pet_array.each do |pet|
      pet.mood = "nervous"
    end 
  end 
   pets.clear
 end 
 
 
  def list_pets
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end 


end 