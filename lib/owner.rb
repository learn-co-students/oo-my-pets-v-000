require 'pry'

class Owner
  attr_accessor :pets, :name
  attr_reader :species

  @@all = []

  def initialize(owner)
    @owner = owner
    @@all << self
    @pets = {fishes: [], cats: [], dogs: []}
    @species = "human"
    @name = name
  end

  def self.all
    @@all
  end

  def self.count
    @@all.size
  end

  def self.reset_all
    @@all.clear
  end

  def species
    @species
  end

  def say_species
   "I am a #{species}."
  end

  def name
    @name
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)

  end

  def buy_cat(name)
    @pets[:cats] <<  Cat.new(name)
  end

  def buy_fish(name)
    @pets[:fishes] <<  Fish.new(name)
  end

  def play_with_cats
    @pets[:cats].each {|c| c.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].each {|f| f.mood = "happy"}
  end

  def walk_dogs
    @pets[:dogs].each {|d| d.mood = "happy"}
  end

  def sell_pets
    @pets.each {|type, pets| pets.each {|p| p.mood = "nervous"}}
    @pets.each {|type, pets| pets.clear}
  end

  def list_pets
  "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."

  end
end
