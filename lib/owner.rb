require "pry"

class Owner
  attr_accessor :name, :pets
  attr_reader :species
  @@all = []
  def initialize(species)
    @pets = {fishes: [], cats: [], dogs: []}
    @species = species
    @@all << self
  end
  def self.all
    @@all
  end
  def say_species
    "I am a #{@species}."
  end
  def self.count
    self.all.size
  end
  def self.reset_all
    @@all = []
  end
  def buy_fish(f_name)
    self.pets[:fishes] << Fish.new(f_name)
  end
  def buy_dog(d_name)
    self.pets[:dogs] << Dog.new(d_name)
  end
  def buy_cat(c_name)
    self.pets[:cats] << Cat.new(c_name)
  end
  def walk_dogs
    self.pets[:dogs].each do |x|
      x.mood = "happy"
    end
  end
  def play_with_cats
    self.pets[:cats].each do |x|
      x.mood = "happy"
    end
  end
  def feed_fish
    self.pets[:fishes].each {|x| x.mood = "happy"}
  end
  def sell_pets
    self.pets.each do |type, pet|
      pet.each {|x| x.mood = "nervous"}
    end
    @pets = {}
  end
  def list_pets
    f_count = self.pets[:fishes].size
    d_count = self.pets[:dogs].size
    c_count = self.pets[:cats].size
    return "I have #{f_count} fish, #{d_count} dog(s), and #{c_count} cat(s)."
  end






end
