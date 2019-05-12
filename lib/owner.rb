require 'pry'
class Owner
  attr_accessor :pets, :name
  attr_reader :species
  @pets = {fishes: [], cats: [], dogs: []}
  @@all = []
  
  def initialize(species)
    @pets = {fishes: [], cats: [], dogs: []}
    @species = species
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@all.size
  end
  
  def self.reset_all
    self.all.clear
  end
  
  def say_species
    "I am a #{species}."
  end
  
  def buy_fish(name)
    new_fish = Fish.new(name)
    self.pets[:fishes] << new_fish
  end
  
  def buy_cat(name)
    new_cat = Cat.new(name)
    self.pets[:cats] << new_cat
  end
  
  def buy_dog(name)
    new_dog = Dog.new(name)
    self.pets[:dogs] << new_dog
  end
  
  def walk_dogs
    @pets[:dogs].each do |dog|  
      dog.mood="happy"
    end
  end
  
  def play_with_cats
    @pets[:cats].each do |cat|  
      cat.mood="happy"
    end
  end
  
  def feed_fish
    @pets[:fishes].each do |fish|  
      fish.mood="happy"
    end
  end
  
  def sell_pets
    @pets.each do |key, values|
      values.each do |pet|
        pet.mood="nervous"
      end
      @pets = {}
    end
  end
  
  def list_pets
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end
  
end