require 'pry'

class Owner
  attr_accessor :owner, :name, :pets
  attr_reader :species
  @@all=[]

  def initialize(species)
    @species = species
    @@all << self
    @pets = {:fishes=>[], :dogs=>[], :cats=>[]}
  end

  def buy_fish(name)
    pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    pets[:dogs].each do |dogs|
    dogs.mood = "happy"
    end
  end

  def play_with_cats
    pets[:cats].each do |cats|
      cats.mood = "happy"
    end
  end

  def feed_fish
    pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    pets[:fishes].each do |fish|
      fish.mood = "nervous"
    pets[:dogs].each do |dog|
      dog.mood = "nervous"
    pets[:cats].each do |cat|
      cat.mood = "nervous"
    end
    end
    end
    @pets.clear
  end

  def list_pets
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end

  def say_species
    "I am a #{@species}."
  end

  def self.all
    @@all
  end

  def self.count
    @@all.size
  end

  def self.reset_all
    @@all.clear
  end


end
