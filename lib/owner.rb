require 'pry'
class Owner
  
  attr_accessor :name, :pets, :walk_dogs
  attr_reader :species
 
  @@all =[]
  
  def initialize(name)
    @name = name
    @species = "human"
    @pets = {:fishes => [], :dogs => [], :cats=> []} #use key to access value. Add or change elements
  
    @@all << self
  end
  
  def self.all
    @@all
  end
  def self.reset_all
    @@all = []
  end
  def self.count 
    @@all.size 
  end
  def say_species
    "I am a #{self.species}."
  end
  def buy_fish(name)
    pets[:fishes] << Fish.new(name)
  end
  def buy_cat(name)
    pets[:cats] << Cat.new(name)
  end
  def buy_dog(name)
    pets[:dogs] << Dog.new(name)
  end
  def walk_dogs
    pets[:dogs].each do |dog| #inside [:dogs] there are Dog objects or instances (Dog.new(name). |dog| is now an object or an instance
    dog.mood = 'happy'
   end
  end
  def play_with_cats
    pets[:cats].each do |cat|
    cat.mood = 'happy'
   end
  end
  def feed_fish
    pets[:fishes].each do |fish|
    fish.mood = 'happy'
   end
  end
  
  def sell_pets
    pets.each do |key, value|
      value.each do |pet|
        pet.mood = 'nervous'
      end
    end
   pets.clear
  end
  
  def list_pets
   "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end
end

#given means the test is giving you so you need to make an argument and expected means that the code is supposed create the number of arguments. 