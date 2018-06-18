require 'pry'
class Owner
  attr_accessor :pets, :name
  @@all = []

  def initialize(pets)
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    @@all.size
  end

  def self.reset_all
    @@all.clear
  end

  def species
    @species = "human"
  end

  def say_species
    "I am a human."
  end

  def name
    @name
  end

  def buy_fish(name_of_fish)
    new_fish = Fish.new(name_of_fish)
    @pets[:fishes] << new_fish

  end

  def buy_cat(name_of_cat)
    new_cat = Cat.new(name_of_cat)
    @pets[:cats] << new_cat
  end

  def buy_dog(name_of_dog)
    new_dog = Dog.new(name_of_dog)
    @pets[:dogs] << new_dog
  end

  def walk_dogs
    @pets[:dogs].each { |dog|
      dog.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].each { |cat| cat.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].each { |fish| fish.mood = "happy"}
  end

  def sell_pets
    @pets.each do |species, pets|
      pets.each do |pet|
        pet.mood = "nervous"
      end
    end
    @pets.clear


  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end


  # code goes here
end
