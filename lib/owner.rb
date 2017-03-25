require "pry"

class Owner
  @@all = []
  attr_accessor :name, :pets
  attr_reader :species

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
    @pets = {
      fishes: [],
      cats: [],
      dogs: []
    }
  end

  def self.all
    @@all
  end

  def self.reset_all
    self.all.clear
  end

  def self.count
    @@all.size
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(name)
    new_fish = Fish.new(name)
    new_fish.owner = self
    self.pets[:fishes] << new_fish
  end

  def buy_cat(name)
    new_cat = Cat.new(name)
    new_cat.owner = self
    self.pets[:cats] << new_cat
  end

  def buy_dog(name)
    new_dog = Dog.new(name)
    new_dog.owner = self
    self.pets[:dogs] << new_dog
  end

  def walk_dogs
    self.pets[:dogs].each{|dog| dog.mood = "happy"}
  end

  def play_with_cats
    self.pets[:cats].each{|cat| cat.mood = "happy"}
  end

  def feed_fish
    self.pets[:fishes].each{|fish| fish.mood = "happy"}
  end

  def sell_pets
    self.pets.each do |type, pets|
      pets.each do |pet|
        pet.mood = "nervous"
      end
      pets.clear
    end
  end

  def list_pets
    "I have #{self.pets[:fishes].size} fish, #{self.pets[:dogs].size} dog(s), and #{self.pets[:cats].size} cat(s)."
  end
end
