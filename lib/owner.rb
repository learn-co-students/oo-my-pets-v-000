require 'pry'
class Owner
  # code goes here
  attr_accessor :pets, :name
  attr_reader :species
  @@all = []
  
  def self.all
    @@all
  end
  
  def initialize(species)
    @pets = {fishes: [], cats: [], dogs: []}
    @species = species
    @@all << self
  end

  def self.count
    @@all.size
  end
  
  def self.reset_all
    @@all.clear
  end
  
  def say_species
    return "I am a #{@species}."
  end
  
  def buy_fish(name)
    self.pets[:fishes] << Fish.new(name)
  end
    
  def buy_cat(name)
    self.pets[:cats] << Cat.new(name)
  end
  
  def buy_dog(name)
    self.pets[:dogs] << Dog.new(name)
  end
  
  def walk_dogs
    self.pets[:dogs].each {|dog| dog.mood = "happy"}
  end
  
  def play_with_cats
    self.pets[:cats].each {|cat| cat.mood = "happy"}
  end
  
  def feed_fish
    self.pets[:fishes].each {|fish| fish.mood = "happy"}
  end
  
  def sell_pets
    self.pets.each do |pet_type, pets|
      pets.each {|pet| pet.mood = "nervous"}
      pets.clear
    end
  end
  
  def list_pets
    return "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
  end
end