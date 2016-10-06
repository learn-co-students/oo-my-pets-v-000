require 'pry'

class Owner

  attr_accessor :pets, :owner, :name, :species
  @@all = []

  def self.all
    @@all
  end

  def initialize(species)
    @pets = {fishes: [], cats: [], dogs: []}
    @species = species
    @@all << self
  end

  def self.reset_all
    @@all = []
  end

  def self.count
    @@all.size
  end

  def species=(species)
    if @species != nil
      message = "Can't change species."
      raise Exception.new(message)
    else
      @species = species
    end
  end

  def say_species
    return "I am a #{@species}."
  end

  def buy_fish(fish)
    new_fish = Fish.new(fish)
    @pets[:fishes] << new_fish
  end

  def buy_cat(cat)
    new_cat = Cat.new(cat)
    @pets[:cats] << new_cat
  end

  def buy_dog(dog)
    new_dog = Dog.new(dog)
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
    @pets.each do |animal, name|
      @pets[animal].each do |name|
        name.mood = "nervous"
      end
    end

    @pets = {fishes: [], cats: [], dogs: []}
  end

  def list_pets

    return "I have #{@pets[:fishes].size} fish, #{@pets[:dogs].size} dog(s), and #{@pets[:cats].size} cat(s)."

  end

end
