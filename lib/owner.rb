require 'pry'

class Owner

  attr_reader :species
  attr_accessor :name, :fish, :cat, :dog, :pets

  @@owners = []

  def initialize(owner)
    @owner = owner
    @@owners << self
    @species = "human"
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def self.all
    @@owners
  end

  def self.reset_all
    @@owners.clear
  end

  def self.count
    @@owners.count
  end

  def say_species
    "I am a #{@species}."
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
    @pets[:dogs].map {|dog| dog.mood = "happy" }
  end

  def play_with_cats
    @pets[:cats].map {|cat| cat.mood = "happy" }
  end

  def feed_fish
    @pets[:fishes].map {|fish| fish.mood = "happy" }
  end

  def sell_pets
    @pets[:dogs].map {|dog| dog.mood = "nervous" }
    @pets[:cats].map {|cat| cat.mood = "nervous" }
    @pets[:fishes].map {|fish| fish.mood = "nervous" }
    @pets[:dogs].clear
    @pets[:cats].clear
    @pets[:fishes].clear
  end

  def list_pets
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end

end
