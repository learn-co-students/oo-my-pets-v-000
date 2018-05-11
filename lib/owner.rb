require 'pry'

class Owner
  attr_accessor :pets, :name
  attr_writer
  attr_reader :species

  @@all = []

  def initialize(name)
    @name = name
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
    #binding.pry
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all = []
  end

  def species
    @name
  end

  def say_species
    "I am a #{@name}."
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
    @pets[:fishes] << fish
  end

  def play_with_cats
    Cat.mood = "happy"
  end

  def walk_dogs
    Dog.mood = "happy"
  end

  def feed_fish
    Fish.mood = "happy"
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end

  def sell_pets

  end

end
