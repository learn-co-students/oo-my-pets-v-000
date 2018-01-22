require 'pry'
class Owner
  attr_accessor :name, :pets
  attr_reader :species
  @@all = []

  def initialize(name)
    @name = name
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
    @species = "human"
  end

  def self.all
    @@all
  end

  def self.count ##Exposing count for #reset_all test
    @@all.count
  end

  def self.reset_all
    @@all = []
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(name)
    fish = Fish.new(name)
    pets[:fishes] << fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    pets[:dogs] << dog
  end

  def walk_dogs
     @pets[:dogs].each {|e| e.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].each {|e| e.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].each {|e| e.mood = "happy"}
  end

  def sell_pets
    @pets.each {|type, pets|
      pets.each {|pet| pet.mood = "nervous"}
    }
    @pets= []
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end

end
