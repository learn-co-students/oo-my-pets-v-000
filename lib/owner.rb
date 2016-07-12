require 'pry'
class Owner
  # code goes here
  attr_accessor :pets, :name
  attr_reader :species 
  
  @@owners = []
  def initialize(name)
    @name = name
    @species = "human"
    @pets = {fishes: [], cats: [], dogs: []}
    @@owners << self
  end

  def buy_cat(name)
    pet = Cat.new(name)
    self.pets[:cats] << pet
  end

  def buy_dog(name)
    pet = Dog.new(name)
    self.pets[:dogs] << pet
  end

  def buy_fish(name)
    pet = Fish.new(name)
    self.pets[:fishes] << pet
  end

  def walk_dogs
    self.pets[:dogs].each do |pet|
      pet.mood = "happy"
    end
  end

  def play_with_cats
    self.pets[:cats].each do |pet|
      pet.mood = "happy"
    end
  end

  def feed_fish
    self.pets[:fishes].each do |pet|
      pet.mood = "happy"
    end
  end

  def say_species
    "I am a human."
  end

  def list_pets
    "I have #{self.pets[:fishes].length} fish, #{self.pets[:dogs].length} dog(s), and #{self.pets[:cats].length} cat(s)."
  end

  def self.all
    @@owners
  end

  def self.reset_all
    @@owners.clear
  end

  def self.count
    @@owners.size
  end

  def sell_pets
    self.pets.each do |type, pets_array|
      pets_array.each do |pet|
        pet.mood = "nervous"
      end
      pets_array.clear
    end
  end


end