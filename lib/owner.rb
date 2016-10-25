require 'pry'
class Owner

  attr_accessor :pets, :name
  attr_reader :species

  def initialize(species)
    @pets = {fishes: [], cats: [], dogs: []}
    @species = species
    @@all << self
  end

  @@all = []

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all.clear
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

  def feed_fish
    @pets[:fishes][0].mood = "happy"
  end

  def play_with_cats
    @pets[:cats][0].mood = "happy"
  end

  def walk_dogs
    @pets[:dogs][0].mood = "happy"
  end

  def say_species
    return "I am a #{self.species}."
  end

  def sell_pets
    self.pets.collect do |animal, array|
      array.collect do |animal_mood|
        animal_mood.mood = "nervous"
      end
    end
    self.pets.clear
  end

  def list_pets
    return "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
  end
end
