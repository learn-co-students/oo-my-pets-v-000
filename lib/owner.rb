require 'pry'

class Owner
  attr_accessor :name, :pets, :fish, :cat, :dog, :mood
  attr_reader :species
  # code goes here
  @@all = []



#class methods beginning with .self
  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.length
  end

  #end of class methods
  @@pets =
    {
      fishes: [],
      cats: [],
      dogs: []
    }
  #instance methods
  def initialize(species)
    @species = species
    @@all << self
  end

  def say_species
    "I am a #{@species}."
  end

  def pets
    @@pets
  end

  def buy_fish(name)
    name = Fish.new(name)
    @@pets[:fishes] << name
  end

  def buy_cat(name)
    name = Cat.new(name)
    @@pets[:cats] << name
  end

  def buy_dog(name)
    name = Dog.new(name)
    @@pets[:dogs] << name
  end

  def walk_dogs
    @@pets[:dogs].each {|doggo| doggo.mood = "happy"}
  end

  def play_with_cats
    @@pets[:cats].each {|kitty| kitty.mood = "happy"}
  end

  def feed_fish
    @@pets[:fishes].each {|fish| fish.mood = "happy"}
  end
binding.pry
  def sell_pets
    @@pets.each do |type, animal|
      animal.each do |name|
        name.mood = "nervous"
      end
    end
    @@pets.clear
  end
  #end of instance methods
end
