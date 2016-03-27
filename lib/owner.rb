require 'pry'
class Owner

  attr_accessor :pets
  attr_reader :species, :name, :owner
  @@all = []

  def initialize(species = "human")
    @species = species
    @name = "Katie"
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.count
  end

  def self.all
    @@all
  end

  def say_species
    say_species = "I am a human."
  end

  def name=(name)
   name
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
    new_dog = Dog.new(name)
    @pets[:dogs] << new_dog
  end

  def walk_dogs
    @pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    @pets[:fishes].each do |fish|
      fish.mood = "nervous"
    end
    @pets[:dogs].each do |dog|
      dog.mood = "nervous"
    end
    @pets[:cats].each do |cat|
      cat.mood = "nervous"
    end
    @pets.clear
  end

  def list_pets
     "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end


end








