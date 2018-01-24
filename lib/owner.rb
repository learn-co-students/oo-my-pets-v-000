require 'pry'

class Owner
  attr_accessor :name, :pets
  attr_reader :species

  @@all = []
  @@count = 0

  def initialize(species)
    @species = "human"
    @pets = {fishes: [], cats: [], dogs: []}
    self.class.all << self
    @@count += 1
  end

  def self.all
    @@all
  end

  def self.count
    @@count
  end

  def self.reset_all
    @@count = 0
  end

  def say_species
    "I am a human."
  end

  def buy_fish(name)
    new_fish = Fish.new(name)
    @pets.each do |pet_type, pet_array|
      if pet_type == :fishes
        pet_array << new_fish
      end
    end
  end

  def buy_cat(name)
    new_cat = Cat.new(name)
    @pets.each do |pet_type, pet_array|
      if pet_type == :cats
        pet_array << new_cat
      end
    end
  end

  def buy_dog(name)
    new_dog = Dog.new(name)
    @pets.each do |pet_type, pet_array|
      if pet_type == :dogs
        pet_array << new_dog
      end
    end
  end

  def walk_dogs
    @pets[:dogs].collect do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].collect do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].collect do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    @pets.each do |pet_type, pet_array|
      pet_array.each do |pet|
        pet.mood = "nervous"
      end
    end
    @pets.each do |pet_type, pet_array|
      pet_array.clear
    end
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end


end
