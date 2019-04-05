require 'pry'
require_relative 'cat.rb'
require_relative 'fish.rb'
require_relative 'dog.rb'

class Owner
  # code goes here
  attr_reader :species
  attr_accessor :name , :pets

  def initialize(species)
    @species = species
    @name = name
    @pets = { :cats => [], :dogs => [], :fishes => [] }
    @@all << self
  end
  @@all = []


  def say_species
    "I am a #{@species}."
  end

  def buy_fish(fish)
    new_fish = Fish.new(fish)
    @pets[:fishes] << new_fish

  end

  def buy_cat(cat)
    new_cat =Cat.new(cat)
    @pets[:cats] << new_cat
  end

  def buy_dog(dog)
    new_dog = Dog.new(dog)
    @pets[:dogs] << new_dog
  end

  def walk_dogs
    @pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    @pets.values.each do |type|
      type.each do |pet_mood|
        pet_mood.mood = "nervous"
      end
      type.clear
    end
  end

  def list_pets
    "I have #{@pets[:fishes].size} fish, #{@pets[:dogs].size} dog(s), and #{@pets[:cats].size} cat(s)."

  end

  def self.all
    @@all
  end

  def self.count
    return @@all.size
  end

  def self.reset_all
    return @@all.clear
  end

  #jj was hur

end
