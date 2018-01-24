require "pry"
class Owner
  attr_accessor :name, :pets
  attr_reader :species
  @@owners = []

  def self.all
    @@owners
  end

  def self.reset_all
    @@owners = []
  end

  def self.count
    @@owners.length
  end

  def initialize(species)
    @species = species
    @name = nil
    @pets = {fishes:[],cats:[],dogs:[]}
    @@owners << self
  end

  def say_species
    "I am a "+@species+"."
  end

  def buy_cat(name)
    @pets[:cats]<<Cat.new(name)
  end

  def buy_fish(name)
    @pets[:fishes]<<Fish.new(name)
  end

  def buy_dog(name)
    @pets[:dogs]<<Dog.new(name)
  end

  def walk_dogs
    @pets[:dogs].each {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].each {|cat| cat.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].each {|fish| fish.mood = "happy"}
  end

  def sell_pets
    @pets.values.flatten.each {|val| val.mood = "nervous"}
    @pets = []
  end

  def list_pets
    num_dogs = @pets[:dogs].length
    num_cats = @pets[:cats].length
    num_fish = @pets[:fishes].length
    "I have #{num_fish} fish, #{num_dogs} dog(s), and #{num_cats} cat(s)."
  end

end
