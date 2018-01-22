require "pry"

class Owner
  attr_accessor :name, :pets
  attr_reader :species


  @@all = []
  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
    @pets = {fishes: [], dogs: [], cats: []}

  end

  def self.reset_all
    self.all.clear
  end

  def self.count
    self.all.length
  end

  def species
    @species
  end

  def say_species
    "I am a #{self.species}."
  end

  def pets
    @pets
  end

  def buy_fish(fish_name)
    new_fish = Fish.new(fish_name)
    self.pets[:fishes] << new_fish
  end

  def buy_cat(cat_name)
    new_cat = Cat.new(cat_name)
    self.pets[:cats] << new_cat
  end

  def buy_dog(dog_name)
    new_dog = Dog.new(dog_name)
    self.pets[:dogs] << new_dog
  end

  def dogs
    self.pets[:dogs]
  end

  def cats
    self.pets[:cats]
  end

  def fishes
    self.pets[:fishes]
  end


  def walk_dogs
    self.dogs.each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    self.cats.each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    self.fishes.each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    #iterate through the values of each key in the hash
    counter = 0
    self.pets.keys.each do |species|
      pets[species].each do |pet|
        pet.mood = "nervous"
      end
    end
    self.pets.clear
  end

  def list_pets
    num_cats = self.cats.length
    num_dogs = self.dogs.length
    num_fish = self.fishes.length
    "I have #{num_fish} fish, #{num_dogs} dog(s), and #{num_cats} cat(s)."
  end


end
