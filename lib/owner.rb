require 'pry'
require_relative "./cat.rb"

class Owner
  @@owners =[]
  attr_accessor :pets, :name
  attr_reader :species

  def initialize(species)
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
    @@owners << self
  end

  def buy_cat(name)
    pets[:cats] << Cat.new(name)
  end

  def buy_fish(name)
    pets[:fishes] << Fish.new(name)
  end

  def buy_dog(name)
    pets[:dogs] << Dog.new(name)
  end

  def self.count
    @@owners.size
  end

  def self.reset_all
    @@owners.clear
  end

  def self.all
    @@owners
  end

  def say_species
    "I am a #{species}."
  end

  def add_pet(pet)
    @pets << pet
  end


  def walk_dogs
    pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  #owner can sell all its pets, which makes pets nervous
  def sell_pets
    pets.each do |species, animals|
      animals.each do |animal|
        animal.mood = "nervous"
      end
        animals.clear
      end
    end

    def list_pets
      "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
    end

end

