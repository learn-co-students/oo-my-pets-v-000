require 'pry'

class Owner
  attr_reader :species
  attr_accessor :pets, :name

  @@all = []
  @@count = 0

  def initialize(species)
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
    @@count += 1
  end

  def self.all
    @@all
  end

  def self.count
    @@count
  end

  def self.reset_all
    @@count = 0 # confirm that this is the intended behavior, not just a hack to make the tests pass
    @@all = []
  end

  def say_species
    "I am a #{self.species}."
  end

  def buy_fish(name)
    self.pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    self.pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    self.pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    self.pets[:dogs].each do |d|
      d.mood = "happy"
    end
  end

  def play_with_cats
    self.pets[:cats].each do |c|
      c.mood = "happy"
    end
  end

  def feed_fish
    self.pets[:fishes].each do |f|
      f.mood = "happy"
    end
  end

  def sell_pets
    self.pets.each {|type, pets| pets.each {|p| p.mood = "nervous"} }
    self.pets.each {|type, pets| self.pets[type] = []}
  end

  def list_pets
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end

end
