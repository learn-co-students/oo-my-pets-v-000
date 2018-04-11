require 'pry'
class Owner
  attr_reader :species
  attr_accessor :pets, :name
  @@owner = []

  def initialize(species)
    @species = species
    @@owner << self
    @name = name
    @pets = {fishes: [],cats: [], dogs: []}
  end

  def self.all
    @@owner
  end

  def self.reset_all
    @@owner.clear
  end

  def self.count
    @@owner.size
  end

  def say_species
  return "I am a #{species}."
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
    pets[:dogs].each {|dog| dog.mood = "happy"}

  end

  def play_with_cats
    pets[:cats].each {|cat| cat.mood = "happy"}
  end

  def feed_fish
    pets[:fishes].each {|fish| fish.mood = "happy"}
  end

  def sell_pets
    pets.each do |k, v|
      v.each do |animal|
        animal.mood = "nervous"
      end
      v.clear
    end
  end

  def list_pets
    "I have #{pets[:fishes].length} fish, #{pets[:dogs].length} dog(s), and #{pets[:cats].length} cat(s)."
  end

end
