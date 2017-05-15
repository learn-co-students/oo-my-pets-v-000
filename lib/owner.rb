require 'pry'

class Owner
  @@all = []

  attr_accessor :pets, :name
  attr_reader :species

  def initialize(owner)
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
  end

  #class methods

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.size
  end

  #instance methods

  def species
    @species = "human"
  end

  def say_species
    "I am a human."
  end

  def name=(name)
    @name = name
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
    pets[:dogs][0].mood=("happy")
  end

  def play_with_cats
    pets[:cats][0].mood=("happy")
  end

  def feed_fish
    pets[:fishes][0].mood=("happy")
  end

  def sell_pets
    pets.each{|animal, arr|
      arr.each {|pet| pet.mood=("nervous") }
      arr.clear
    }
  end

  def list_pets
    "I have #{pets[:fishes].size} fish, #{pets[:dogs].size} dog(s), and #{pets[:cats].size} cat(s)."
  end

end
