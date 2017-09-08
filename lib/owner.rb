require 'pry'

class Owner

  attr_accessor :name, :pets
  attr_reader :species

  @@owners = []

  def initialize(species)
    @species   = species
    @@owners << self
    @pets    = { fishes: [], dogs: [], cats: [] }
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

  def say_species
    "I am a #{self.species}."
  end

  def buy_fish(name)
    fish = Fish.new(name)
    pets[:fishes] << fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    pets[:dogs] << dog
  end

  def walk_dogs
    pets[:dogs].each {|d| d.mood = "happy"}
  end

  def play_with_cats
    pets[:cats].each {|c| c.mood = "happy"}
  end

  def feed_fish
    pets[:fishes].each {|f| f.mood = "happy"}
  end

  def sell_pets
    self.pets.each do |type, pets|
      pets.each do |pet|
        pet.mood = "nervous"
      end
      pets.clear
    end
  end

  def list_pets
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end

end
