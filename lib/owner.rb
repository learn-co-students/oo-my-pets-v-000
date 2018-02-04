require "pry"

class Owner
  @@all = []
  @@count = 0
  attr_accessor :pets
  attr_reader :species

  def initialize(name)
    @name = name
    @species = "human"
    @pets = {:fishes => [], :cats => [], :dogs => []}
    @@all << self
    @@count += 1
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@count = 0
  end

  def self.count
    @@count
  end

  def say_species
    "I am a human."
  end

  def name=(name)
    @name = name
  end

  def name
    @name
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
    @pets[:dogs].each {|dog| dog.mood=("happy")}
  end

  def play_with_cats
    @pets[:cats].each {|cat| cat.mood=("happy")}
  end

  def feed_fish
    @pets[:fishes].each {|fish| fish.mood=("happy")}
  end

  def sell_pets
    @pets[:dogs].each {|dog| dog.mood=("nervous")}
    @pets[:cats].each {|cat| cat.mood=("nervous")}
    @pets[:fishes].each {|fish| fish.mood=("nervous")}
    @pets[:dogs] = []
    @pets[:cats] = []
    @pets[:fishes] = []
  end

  def list_pets
    "I have #{@pets[:fishes].size} fish, #{@pets[:dogs].size} dog(s), and #{@pets[:cats].size} cat(s)."
  end
end
