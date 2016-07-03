require "pry"

class Owner
  # code goes here
  attr_accessor :name, :pets
  attr_reader :species
  @@all = []
  def initialize(species)
    @species = species
    @@all << self
    pets
  end

  def self.reset_all
    @@all = []
  end

  def say_species
    "I am a #{@species}."
  end

  def pets
    @pets = {
      fishes: [],
      dogs: [],
      cats: []
    } if @pets == nil
    @pets
  end

  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
  end

  def buy_fish(name)
    fish = Fish.new(name)
    #@pets[:fishes] = [] if @pets[:fishes] == nil
    @pets[:fishes] << fish
    #binding.pry
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end

  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood = 'happy'
    end
    @pets
  end

  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood = 'happy'
    end
    @pets
  end

  def walk_dogs
    @pets[:dogs].each do |dog|
      dog.mood = 'happy'
    end
    @pets
  end

  def sell_pets
    @pets.each do |type, list|
      list.each do |pet|
        pet.mood = 'nervous'
      end
    end
    @pets.clear
    pets
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end
end
