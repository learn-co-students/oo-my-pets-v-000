require 'pry'

class Owner
  
  attr_accessor :name, :pets, :owners
  attr_reader :species
  

  @@owners = []

  def initialize(species)
    @species = species
   
    @pets = {fishes: [], 
            cats: [], 
            dogs: []}
    
    @@owners << self  
  end

  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
  end

  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
  end

  def self.all
    @@owners
  end

  def self.count
    @@owners.count
  end
  
  def self.reset_all
    @@owners.clear
  end
  
  def species_error
    raise ImproperGeneticActionError if self.species != "human"
  end

  def say_species
    return "I am a #{@species}."
  end

  def walk_dogs
    @pets[:dogs].each {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].each {|cat| cat.mood = "happy"}
  end
    
  def feed_fish
    @pets[:fishes].each {|fish| fish.mood = "happy"}
  end

  def sell_pets
    @pets[:cats].each {|cat| cat.mood = "nervous"}
    @pets[:dogs].each {|dog| dog.mood = "nervous"}
    @pets[:fishes].each {|fish| fish.mood = "nervous"}
    @pets.clear        
  end

  def list_pets
    return "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end
    
end