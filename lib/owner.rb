require 'pry'
class Owner
  # code goes here
  attr_accessor :name, :pets


  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @pets = {
      fishes: [],
      dogs: [],
      cats: []
    }
    self.class.all << self
  end

  def self.count
    self.all.size
  end

  def self.reset_all
    self.all.clear
  end

  def species
    self.name
  end

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
    dogs = self.pets[:dogs]
    dogs.each{|dog| dog.mood = "happy"}
  end

  def play_with_cats
    cats = self.pets[:cats]
    cats.each{|cat| cat.mood = "happy"}
  end

  def feed_fish
    fishes = self.pets[:fishes]
    fishes.each{|fish| fish.mood = "happy"}
  end

  def sell_pets
    self.pets.each do |type, animals|
      animals.each{|animal| animal.mood = "nervous"}
      animals.clear
    end
  end

  def list_pets
    fishes_count = self.pets[:fishes].size
    cats_count = self.pets[:cats].size
    dogs_count = self.pets[:dogs].size
    "I have #{fishes_count} fish, #{dogs_count} dog(s), and #{cats_count} cat(s)."
  end

end
