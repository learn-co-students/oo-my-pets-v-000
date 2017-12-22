require 'pry'

class Owner
  attr_accessor :pets, :name
  attr_reader :species

  @@all = []
  @@owner_count = 0

  def initialize(species)
    @pets = {fishes: [], cats: [], dogs: []}
    @@owner_count += 1
    @@all << self
    @species = species
  end

  def self.all
    @@all
  end

  def self.count
    @@owner_count
  end

  def self.reset_all
    @@owner_count = 0
    @@all.clear
  end

  def say_species
    "I am a #{species}."
  end

  def buy_cat(name)
    cat = Cat.new(name)
    self.pets[:cats] << cat
  end

  def buy_fish(name)
    fish = Fish.new(name)
    self.pets[:fishes] << fish
  end

  def buy_dog(name)
    dog = Dog.new(name)
    self.pets[:dogs] << dog
  end

  def walk_dogs
    self.pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    self.pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    self.pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    self.pets.each do |type, pets|
      pets.each {|pet| pet.mood = "nervous"}
      pets.clear
    end
  end

  def list_pets
    "I have #{self.pets[:fishes].size} fish, #{self.pets[:dogs].size} dog(s), and #{self.pets[:cats].size} cat(s)."
  end
end
