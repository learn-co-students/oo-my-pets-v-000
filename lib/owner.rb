require 'pry'

class Owner
  attr_accessor :pets, :name
  attr_reader :species

  @@owners = []

  def initialize(species)
    @pets = {fishes: [], cats: [], dogs: []}
    @species = species
    @@owners << self
  end

  def say_species
    "I am a #{species}."
  end


  def self.all
    @@owners
  end

  def self.count
    @@owners.size
  end

  def self.reset_all
    @@owners.clear
  end

  def buy_fish(name)
    new_fish = Fish.new(name)
    pets[:fishes] << new_fish
  end

  def buy_dog(name)
    new_dog = Dog.new(name)
    pets[:dogs] << new_dog
  end

  def buy_cat(name)
    new_cat = Cat.new(name)
    pets[:cats] << new_cat
  end

  def walk_dogs
    pets[:dogs].each {|d| d.mood = "happy"}
  end

  def play_with_cats
    pets[:cats].each {|c| c.mood = "happy"}
  end

  def feed_fish
    pets[:fishes].each {|f| f.mood ="happy"}
  end

  def sell_pets
    # pets[:dogs].each {|p| p.mood = "nervous"}
    # pets[:cats].each {|p| p.mood = "nervous"}
    # pets[:fishes].each {|p| p.mood = "nervous"}
    # #REFACTOR ME!
    pets.each do |type, animals|
     animals.each do |animal|
      animal.mood = "nervous"
      end
     end
    pets.clear
  end

  def list_pets
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end

end
