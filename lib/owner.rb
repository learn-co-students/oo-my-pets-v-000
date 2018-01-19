require 'pry'

class Owner
  # code goes here
  attr_accessor :pets, :name
  attr_reader :species

  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
    @pets = {fishes: [], cats: [], dogs: []}
  end

  def self.all
    @@all
  end

  def self.count
    self.all.length
  end

  def self.reset_all
    self.all.clear
  end

  def say_species
    "I am a #{@species}."
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
    self.pets[:dogs].each {|d| d.mood = "happy"}
  end

  def play_with_cats
    self.pets[:cats].each {|c| c.mood = "happy"}
  end

  def feed_fish
    self.pets[:fishes].each {|f| f.mood = "happy"}
  end

  def sell_pets
    self.pets.each do |species, pets|
      pets.each do |instance|
        instance.mood = "nervous"
      end
    end
    self.pets = {fishes: [], cats: [], dogs: []}
  end

  def list_pets
    "I have #{self.pets[:fishes].length} fish, #{self.pets[:dogs].length} dog(s), and #{self.pets[:cats].length} cat(s)."
  end

end
