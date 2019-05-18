require 'pry'
class Owner
  @@owners = []

  def initialize(species)
    @species = species
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@owners << self
  end

  attr_accessor :name, :pets
  attr_reader :species

  def say_species
    "I am a #{self.species}."
  end

  def buy_fish(fish)
    self.pets[:fishes] << Fish.new(fish)
  end

  def buy_cat(cat)
    self.pets[:cats] << Cat.new(cat)
  end

  def buy_dog(dog)
    self.pets[:dogs] << Dog.new(dog)
  end

  def walk_dogs
    self.pets[:dogs].each {|e| e.mood = "happy"}
  end

  def play_with_cats
    self.pets[:cats].each {|e| e.mood = "happy"}
  end

  def feed_fish
    self.pets[:fishes].each {|e| e.mood = "happy"}
  end

  def sell_pets
    self.pets.each do |key, pet|
      pet.each {|e| e.mood = "nervous"}
      pet.clear
    end

  end

  def list_pets
    x = self.pets[:fishes].count
    y = self.pets[:dogs].count
    z = self.pets[:cats].count
    #binding.pry
    "I have #{x} fish, #{y} dog(s), and #{z} cat(s)."
  end

  def self.reset_all
    @@owners.clear
  end

  def self.all
    @@owners
  end

  def self.count
    @@owners.count
  end
end
