require 'pry' 
class Owner
  @@all = []
  
  attr_accessor :name, :say_species, :pets
  attr_reader :species
 
  def initialize(name)
    @name = name
    @species = "human"
    @say_species = "I am a human."
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
  end
  
  def self.count
    @@all.length
  end
     
   def self.all
     @@all
   end
   
  def self.reset_all
    self.all.clear
  end
  
  def buy_fish(name)
    fish = Fish.new(name)
    self.pets[:fishes] << fish
  end
  
  def buy_cat(name)
    cat = Cat.new(name)
    self.pets[:cats] << cat
  end
  
  def buy_dog(name)
    dog = Dog.new(name)
    self.pets[:dogs] << dog
  end
  
  def walk_dogs
    self.pets[:dogs].each do |dog|
      dog.mood = "happy" 
    end
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
    self.pets.each do |type_of_pet, values|
      values.each do |pet|
        pet.mood = "nervous"
      end
      values.clear
    end
 end
 
  def list_pets
    return "I have #{pets[:fishes].length} fish, #{pets[:dogs].length} dog(s), and #{pets[:cats].length} cat(s)."
 end
end



