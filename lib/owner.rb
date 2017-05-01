require "pry"

class Owner
  attr_accessor :name, :pets

  attr_reader :species

  @@all = []

  def self.all
    @@all
  end

  def self.reset_all
    @@all = []
  end

  def self.count
    self.all.count
  end


  def initialize(name)
    @name = name
    @@all << self
    @species = "human"
    @pets = {fishes: [], dogs: [], cats: []}

  end

  def say_species
    # binding.pry
    return "I am a #{self.species}."
  end

  def pets
    @pets
  end

  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish

  end


  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat

  end

  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog

  end

  def walk_dogs
    @pets[:dogs].each {|d| d.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].each {|c| c.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].each {|f| f.mood = "happy"}
  end

  def sell_pets
    @pets[:dogs].each {|d| d.mood = "nervous"}
    @pets[:cats].each {|c| c.mood = "nervous"}
    @pets[:fishes].each {|f| f.mood = "nervous"}
    # binding.pry
    @pets = {}
  end

  def list_pets
    dogs_number = @pets[:dogs].count
    cats_number = @pets[:cats].count
    fish_number = @pets[:fishes].count
    return "I have #{fish_number} fish, #{dogs_number} dog(s), and #{cats_number} cat(s)."

  end

end
