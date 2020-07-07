require 'pry'

class Owner
  attr_reader :species
  attr_accessor :name, :pets

  @@all = []

  def initialize(species)
    @species = species
    @pets = {:cats=>[], :dogs=>[], :fishes=>[]}
    @@all << self
  end

  def self.all
    @@all
  end

  def self.reset_all
    all.clear
  end

  def self.count
    all.count
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(name)
    fish = Fish.new(name)
    fish.owner = self
    @pets[:fishes] << fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    cat.owner = self
    @pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    dog.owner = self
    @pets[:dogs] << dog
  end

  def walk_dogs
    @pets[:dogs].each{|dog| dog.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].each{|cat| cat.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].each{|fish| fish.mood = "happy"}
  end

  def sell_pets
    @pets.collect do |species, pets|
      pets.each{|pet| pet.mood = "nervous"}.clear
    end
  end

  def list_pets
    "I have #{@pets[:fishes].size} fish, #{@pets[:dogs].size} dog(s), and #{@pets[:cats].size} cat(s)."
  end

end
