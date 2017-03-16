require 'pry'

class Owner
  attr_accessor :name, :species, :pets

  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
  end

  def pets
    @pets
  end

  def species=(species)
      raise 'Error: cannot change name'
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.count
  end

  def say_species
    return "I am a #{@species}."
  end

  def buy_fish(pet_name)
    fish = Fish.new(pet_name)
    @pets[:fishes] << fish
  end

  def buy_dog(pet_name)
    dog = Dog.new(pet_name)
    @pets[:dogs] << dog
  end

  def buy_cat(pet_name)
    cat = Cat.new(pet_name)
    @pets[:cats] << cat
  end

  def walk_dogs
    @pets[:dogs].each {|pet| pet.mood="happy"}
  end

  def play_with_cats
    @pets[:cats].each {|pet| pet.mood="happy"}
  end

  def feed_fish
    @pets[:fishes].each {|pet| pet.mood="happy"}
  end

  def sell_pets
    @pets[:dogs].each {|pet| pet.mood="nervous"}
    @pets[:cats].each {|pet| pet.mood="nervous"}
    @pets[:fishes].each {|pet| pet.mood="nervous"}
    @pets.clear
  end

  def list_pets
    return "I have #{@pets[:fishes].size} fish, #{@pets[:dogs].size} dog(s), and #{@pets[:cats].size} cat(s)."
  end


end
