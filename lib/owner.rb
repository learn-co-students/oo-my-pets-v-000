require 'pry'
class Owner
  attr_accessor :name, :pets
  attr_reader :species
  
  @@all =[]
  
  
  def initialize(species)
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
    @species = species
  end

  
  def say_species
    "I am a #{species}."
  end
  
  
  def buy_fish(name)
    #binding.pry
    pets[:fishes]
    @pets[:fishes] << Fish.new(name)
  end
  
  def buy_cat(name)
    #binding.pry
    pets[:cats]
    @pets[:cats] << Cat.new(name)
  end
  
  def buy_dog(name)
    #binding.pry
    pets[:dogs]
    @pets[:dogs] << Dog.new(name)
  end
  
  def walk_dogs
    @pets[:dogs] << Dog.new(name)
    # binding.pry
    @pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end
  
  def play_with_cats
    @pets[:cats] << Cat.new(name)
    # binding.pry
    @pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end
  
  def feed_fish
    @pets[:fishes] << Fish.new(name)
    # binding.pry
    @pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end
  
  def sell_pets
    @pets.each do |key, animals|
      animals.each do |pet|
        pet.mood = "nervous"
      end
     animals.clear
    end
  end
  
  def list_pets
    num_fish = @pets[:fishes].count
    num_cats = @pets[:cats].count
    num_dogs = @pets[:dogs].count
    return "I have #{num_fish} fish, #{num_dogs} dog(s), and #{num_cats} cat(s)."
  end
    
  
  
  
  def self.all
    @@all
  end
  
  def self.reset_all
    @@all = []
  end
  
  def self.count
    @@all.count
  end
  
end