require 'pry'

class Owner
  @@all = []
  attr_reader :species
  attr_accessor :pets, :name
  
  def initialize(owner)
  @@all << self
  @pets = {fishes: [], cats: [], dogs: []}
  @species = "human"
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
  
  def say_species
    message = "I am a #{self.species}."
    message
  end
  
  def buy_fish(name)
    new_fish=Fish.new(name)
    @pets[:fishes] << new_fish
  end
  
  def buy_cat(name)
    new_cat=Cat.new(name)
    @pets[:cats] << new_cat
  end
  
  def buy_dog(name)
    new_dog=Dog.new(name)
    @pets[:dogs] << new_dog
  end
  
  def walk_dogs
    dogs=self.pets[:dogs]
    dogs.each{|d| d.mood="happy"}
  end
  
  def play_with_cats
    cats=self.pets[:cats]
    cats.each{|d| d.mood="happy"}
  end
  
  def feed_fish
    fishes=self.pets[:fishes]
    fishes.each{|d| d.mood="happy"}
  end
  
  def sell_pets
   pets.each do |species, pets_array|
      pets_array.each do |pet|
        pet.mood = 'nervous'
      end
    end
    pets.clear
  end
  
  def list_pets
    msg = "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
    msg
  end
end