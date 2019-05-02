require 'pry'
class Owner
  @@all = []
  attr_accessor :pets, :name
  attr_reader :species, :pets
  
  def initialize(name)
    @owner = name
    @pets = {fishes: [], cats: [], dogs: []}
    @species = "human"
    @@all << self
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
  
  def species_initialize(species)
    if species == "cat"
      name = Cat.new(name)
    elsif species == "dog"
      name = Dog.new(name)
    else
      name = Fish.new(name)
    end
  end  
  
  def say_species
    "I am a #{self.species}."
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
    self.pets[:dogs].map {|dog| dog.mood = "happy"}
  end
  
  def play_with_cats
    self.pets[:cats].map {|cat| cat.mood = "happy"}
  end
  
  def feed_fish
      self.pets[:fishes].map {|fish| fish.mood = "happy"}
  end  
 
  
  def sell_pets
    
    self.pets.each do |owner_hash, pets_array| 
      pets_array.map do |pet| 
        pet.mood = "nervous"
      end
    end  
    self.pets = {fishes: [], cats: [], dogs: []}
  end
  
  def list_pets
    "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
  end  
end