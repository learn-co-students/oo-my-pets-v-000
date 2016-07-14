require 'pry'

class Owner
  
  attr_accessor :pets, :name
  attr_reader :species
  @@all = []
  @@count = 0

  def initialize(species)
  	@pets = {fishes: [], cats: [], dogs: []}
  	@species = species
  	@@all << self
  	@@count += 1
  end

  def self.all
  	@@all
  end

  def self.reset_all
  	@@count = 0
  end

  def self.count
  	@@count
  end

  def say_species
  	species = self.species
  	return "I am a #{species}."
  end

  def buy_fish(name)
  	fish = Fish.new(name)
  	@pets[:fishes] << fish
  end

  def buy_cat(name)
  	cat = Cat.new(name)
  	@pets[:cats] << cat
  end

  def buy_dog(name)
  	dog = Dog.new(name)
  	@pets[:dogs] << dog
  end

  def walk_dogs
  	self.pets[:dogs].map do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
  	self.pets[:cats].map do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
  	self.pets[:fishes].map do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
  	self.pets[:dogs].map do |dog|
      dog.mood = "nervous"
    end

    self.pets[:cats].map do |cat|
      cat.mood = "nervous"
    end

    self.pets[:fishes].map do |fish|
      fish.mood = "nervous"
    end

    self.pets.map do |type, pet|
      pet.clear
    end
  end

  def list_pets
  	fish_count = self.pets[:fishes].length
    dog_count = self.pets[:dogs].length
    cat_count = self.pets[:cats].length
    return "I have #{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."
  end


end