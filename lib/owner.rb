require 'pry'

class Owner
  attr_accessor :pets
  attr_reader :species, :name
  @@all = []

  def initialize(species)
    @species = species
    @@all << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def name=(name)
    @name = name
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
    "I am a #{self.species}."
  end

  def buy_fish(name)
    self.pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    self.pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    self.pets[:dogs] << Dog.new(name)
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
    self.pets.each do |type, pet|
      pet.each {|name| name.mood = "nervous"}
    end
    @pets.clear
  end

  def list_pets
    num_of_pets = []
    self.pets.each do |type, pet|
      num_of_pets << pet.collect {|num| pet.length}.uniq
    end
    "I have #{num_of_pets[0][0]} fish, #{num_of_pets[1][0]} dog(s), and #{num_of_pets[2][0]} cat(s)."
  end
end
