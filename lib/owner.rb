require 'pry'

class Owner
  attr_accessor :pets, :name
  attr_reader :species

  @@all = []
  @@count = 0

  def initialize(species = "human")
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
    @@count += 1
  end

  def self.count
    @@count
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@count = 0
    @@count
  end

  def say_species
     "I am a #{@species}."
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
    dogs = self.pets[:dogs]
    dogs.map {|d| d.mood = "happy" }
  end

  def play_with_cats
    cats = self.pets[:cats]
    cats.map {|c| c.mood = "happy" }
  end

  def feed_fish
    fishes = self.pets[:fishes]
    fishes.map {|f| f.mood = "happy" }
  end

  def sell_pets
    hash_all_pets = self.pets
    hash_all_pets.map do |key,val|
      hash_all_pets[key].map {|k| k.mood = "nervous"}
      hash_all_pets[key] = []
    end
  end

  def list_pets
    "I have #{@pets[:fishes].size} fish, #{@pets[:dogs].size} dog(s), and #{@pets[:cats].size} cat(s)."
  end


end
