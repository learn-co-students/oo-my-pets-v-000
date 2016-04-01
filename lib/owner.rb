require 'pry'

class Owner

  @@all = [] # Class level Array for storing all owners
  attr_accessor :name, :pets
  attr_reader :species

  def initialize(species, name = nil)
    @species = species
    @name = name
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@all << self
  end

  # Class Methods #

  def self.all
    @@all
  end

  def self.reset_all
    self.all.clear
  end

  def self.count
    self.all.size
  end

  # Instance Methods #

  def say_species
    "I am a #{self.species}."
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
    self.pets[:dogs].each {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    self.pets[:cats].each {|cat| cat.mood = "happy"}
  end

  def feed_fish
    self.pets[:fishes].each {|fish| fish.mood = "happy"}
  end

  def sell_pets
    self.pets.each do |species, pet|
      pet.each {|animal| animal.mood = "nervous"}
    end
    self.reset_pets
  end

  def reset_pets
    self.pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def list_pets
    num_fish = self.pets[:fishes].length
    num_dogs = self.pets[:dogs].length
    num_cats = self.pets[:cats].length
    "I have #{num_fish} fish, #{num_dogs} dog(s), and #{num_cats} cat(s)."
  end
end
