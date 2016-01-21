require 'pry'

class Owner
  attr_accessor :name, :pets
  attr_reader :species
  
  @@all = []
  @@count = 0

  def initialize(name)
    @name = name
    @pets = {fishes: [], cats: [], dogs: []}
    @species = "human"
    @@count += 1
    @@all << self
  end

  #### CLASS METHODS  #####

  def self.count
    @@count
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@count = 0
  end

  #### INSTANCE METHODS #####

  def species
    @species
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(name)
    new_instance = Fish.new(name)
    @pets[:fishes] << new_instance
  end

  def buy_cat(name)
    new_instance = Cat.new(name)
    @pets[:cats] << new_instance
  end

  def buy_dog(name)
    new_instance = Dog.new(name)
    @pets[:dogs] << new_instance
  end

  def walk_dogs
    @pets[:dogs].each do |i|
      i.mood = 'happy'
    end
  end

  def play_with_cats
    @pets[:cats].each do |i|
      i.mood = 'happy'
    end
  end

  def feed_fish
    @pets[:fishes].each do |i|
      i.mood = 'happy'
    end
  end

  def sell_pets
    @pets.map do |key, value|
      value.each do |i|
        i.mood = "nervous"
      end
      value.clear
    end
  end

  def list_pets
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end
end