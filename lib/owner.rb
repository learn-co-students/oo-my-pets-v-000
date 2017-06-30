require 'pry'
class Owner
  attr_accessor :pets, :name
  attr_reader :species
  @@all = []

  def initialize(species="human")
    # in instance methods, self refers to the instance, in class methods, self refers to the class (def self.all)
    self.name = name # @name = name
    @species = species
    self.pets = {fishes: [], cats: [], dogs: []} # self.pets, @pets, self.pets=
    self.save

  end

  def say_species
    "I am a #{@species}."
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

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all.clear
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

end
