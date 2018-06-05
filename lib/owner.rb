require_relative 'fish.rb'
require_relative 'dog.rb'
require_relative 'cat.rb'

class Owner
  attr_accessor :name, :owner, :pets
  attr_reader :species

  
@@all_owners = []

  
  def initialize(species)
    @species = species
    @@all_owners << self
    @pets = {:fishes =>[], :dogs=>[], :cats=>[]}
  end 

  
  def self.all
    @@all_owners  
  end 
  
  def self.reset_all
    @@all_owners.clear
  end
  
  def self.count
    @@all_owners.count
  end
  
  def species
    @species
  end
    
  def say_species
    s = self.species
    return "I am a #{s}."
  end
  
  def pets 
    @pets
  end
    
  def buy_fish(name)
   fish = Fish.new(name)
   pets[:fishes] << fish
  end
  
  def buy_cat(name)
   cat = Cat.new(name)
   pets[:cats] << cat
  end
  
  def buy_dog(name)
   dog = Dog.new(name)
   pets[:dogs] << dog
  end
  
  def walk_dogs
    pets[:dogs].collect {|dog| dog.mood = "happy"}
  end
  
   def play_with_cats
    pets[:cats].collect {|cat| cat.mood = "happy"}
  end
  
  def feed_fish
    pets[:fishes].collect {|fish| fish.mood = "happy"}
  end
  
  def sell_pets
    @pets[:fishes].collect {|fish| fish.mood = "nervous"}
    @pets[:fishes] = []
    @pets[:dogs].collect {|dog| dog.mood = "nervous"}
    @pets[:dogs] = []
    @pets[:cats].collect {|cat| cat.mood = "nervous"}
    @pets[:cats] = []
  end
  
  def list_pets
    f = @pets[:fishes].count
    d = @pets[:dogs].count
    c = @pets[:cats].count
    return "I have #{f} fish, #{d} dog(s), and #{c} cat(s)."
  end
end