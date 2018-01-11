require 'pry'

class Owner
attr_accessor :pets, :name
attr_reader :species

@@owners = []

  def initialize(name)
    @name = name
    @pets = {fishes: [], cats: [], dogs: []}
    @species = "human"
    @@owners << self
  end

  def self.all
    @@owners
  end

  def self.reset_all
    @@owners.clear
  end

  def self.count
    self.all.size
  end

  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end

  def say_species
    return "I am a #{@species}."
  end

  def walk_dogs
    self.pets[:dogs].each {|el| el.mood = "happy"}
  end

  def play_with_cats
    self.pets[:cats].each {|el| el.mood = "happy"}
  end

  def feed_fish
    self.pets[:fishes].each {|el| el.mood = "happy"}
  end

  def sell_pets
    self.pets.each do |k, v|
      v.each {|pet| pet.mood = "nervous" }
    self.pets = {fishes: [], cats: [], dogs: []}
      # binding.pry
    end
  end

  def list_pets
    return "I have #{@pets[:fishes].size} fish, #{@pets[:dogs].size} dog(s), and #{@pets[:cats].size} cat(s)."
  end

end
