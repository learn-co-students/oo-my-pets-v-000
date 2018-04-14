require 'pry'
class Owner

  @@all = []


  attr_accessor :name, :pets
  attr_reader :species
  attr_writer :mood

  def initialize(species)
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
  end

  def say_species
    return "I am a #{@species}."
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

  def buy_fish(fish)
    new_fish = Fish.new(fish)
    @pets[:fishes] << new_fish
  end

  def buy_cat(cat)
    new_cat = Cat.new(cat)
    @pets[:cats] << new_cat
  end

  def buy_dog(dog)
    new_dog = Dog.new(dog)
    @pets[:dogs] << new_dog
  end

  def walk_dogs
    pets[:dogs].each do |m|
      m.mood = "happy"
    end
  end

  def play_with_cats
    pets[:cats].each do |c|
      c.mood = "happy"
    end
  end

  def feed_fish
    pets[:fishes].each do |f|
      f.mood = "happy"
    end
  end

  def sell_pets
    pets.each do |k, v|
      v.each do |pet|
        pet.mood = "nervous"
      end
    end
    @pets = {}
    #binding.pry
  end

  def list_pets
    "I have #{pets[:fishes].length} fish, #{pets[:dogs].length} dog(s), and #{pets[:cats].length} cat(s)."
    #binding.pry
  end




end
