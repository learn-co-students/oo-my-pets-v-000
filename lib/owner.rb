require 'pry'

class Owner
  # code goes here
  @@all = []
  @@count = 0
  attr_reader :species
  attr_accessor :pets, :name

  def initialize(species)
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
    @@count += 1
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    @@count
  end

  def self.reset_all
    # Owner.clear
    @@count = 0
  end

  def say_species
    return "I am a #{@species}."
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
    @pets.each do |keys, animals_arrays|
        animals_arrays.each do |animal|
          animal.mood = "nervous"
        end
        animals_arrays.clear
    end
  end

  def list_pets
    return "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end

end
