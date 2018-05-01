require 'pry'

class Owner

  attr_accessor :pets, :name
  attr_reader :species

  @@owners = []

  def initialize(species)
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
    @@owners << self
  end

  def self.all
    @@owners
  end

  def self.reset_all
    @@owners = []
  end

  def self.count
    @@owners.count
  end

  def say_species
    "I am a #{species}."
  end

  def buy_fish(name)
    fish = Fish.new(name)
    if fish.class == Fish
      @pets[:fishes] << fish
    end
  end

  def buy_cat(name)
    cat = Cat.new(name)
    if cat.class == Cat
      @pets[:cats] << cat
    end
  end

  def buy_dog(name)
    dog = Dog.new(name)
    if dog.class == Dog
      @pets[:dogs] << dog
    end
  end

  def walk_dogs
    @pets[:dogs].each do |item|
      item.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].each do |item|
      item.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].each do |item|
      item.mood = "happy"
    end
  end
  # #
  # binding.pry
  def sell_pets
    @pets.each do |animal_type, pet|
      pet = nil
      end
    end
  end

end
