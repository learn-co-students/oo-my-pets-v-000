require 'pry'

class Owner
  # code goes here
  attr_accessor :pets, :fishes, :dogs, :cats, :name, :mood
  attr_reader :species

  @@all = []

  def self.all
    @@all
  end

  def self.count
    self.all.count
  end

  def self.reset_all
    self.all.clear
  end


  def initialize(species)
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}

    @@all << self
  end

  def say_species
     return "I am a #{@species}."
  end

  def buy_fish(name)
    fish = Fish.new(name)
    self.pets[:fishes] << fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    self.pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    self.pets[:dogs] << dog
  end

  def walk_dogs
    dog = Dog.new(name)
    self.pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    cat = Cat.new(name)
    self.pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    fish = Fish.new(name)
    self.pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets

    self.pets.each_pair do |type, pet|
      pet.each do |o|
        o.mood = "nervous"
      end
    end
    @pets.clear
    # binding.pry
  end

  def list_pets
    return "I have #{pets[:fishes].length} fish, #{pets[:dogs].length} dog(s), and #{pets[:cats].length} cat(s)."
  end
  
end
