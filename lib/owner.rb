require 'pry'

class Owner
  attr_accessor :name, :pets
  attr_reader :species

  @@all = Array.new

  def initialize(species)
    @species = species
    @pets = pet_hash
    @@all << self
  end

  def pet_hash
    { cats: Array.new, dogs: Array.new, fishes: Array.new }
  end

  def self.all
    @@all
  end

  def self.reset_all
    self.all.clear
  end

  def self.count
    self.all.count
  end

  def say_species
    "I am a #{species}."
  end

  def buy_fish(fish)
    new_fish = Fish.new(fish)
    pets[:fishes] << new_fish
  end

  def buy_cat(cat)
    new_cat = Cat.new(cat)
    pets[:cats] << new_cat
  end

  def buy_dog(dog)
    new_dog = Dog.new(dog)
    pets[:dogs] << new_dog
  end

  def walk_dogs
    pets[:dogs].each { |dog| dog.mood = 'happy' }
  end

  def play_with_cats
    pets[:cats].each { |cat| cat.mood = 'happy' }
  end

  def feed_fish
    pets[:fishes].each { |fish| fish.mood = 'happy' }
  end

  def sell_pets
    pets.values.each do |pets|
      pets.each do |pet|
        pet.mood = 'nervous'
      end
    end
    pets.clear
  end

  def list_pets
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end
end
