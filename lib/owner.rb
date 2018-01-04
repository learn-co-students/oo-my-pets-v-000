require 'pry'

class Owner
  attr_accessor :name
  attr_reader :species, :pets
  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
    @pets = {fishes: [], dogs: [], cats: []}
  end

  def self.count
    @@all.count
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def say_species
    "I am a human."
  end

  def pets=(pets)
    @pets = pets
  end


  def buy_fish(fish_name)
    @pets[:fishes] << Fish.new(fish_name)
  end

  def buy_cat(cat_name)
    @pets[:cats] << Cat.new(cat_name)
  end

  def buy_dog(dog_name)
    @pets[:dogs] << Dog.new(dog_name)
  end

  def walk_dogs
    @pets[:dogs].each do |dog_instance|
      dog_instance.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].each do |cat_instance|
      cat_instance.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].each do |fish_instance|
      fish_instance.mood = "happy"
    end
  end

  def sell_pets
    @pets.each do |pet_key, pet_instances|
      pet_instances.each do |pet|
        pet.mood = "nervous"
      end
    end
    @pets.clear
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end

end
