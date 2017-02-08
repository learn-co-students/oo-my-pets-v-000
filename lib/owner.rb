require 'pry'

class Owner
  attr_accessor :pets, :name
  attr_reader :species

  @@all = []

  def initialize(name)
    @name = name
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
    @species = "human"
  end
  def self.all
    @@all
  end
  def self.count
    @@all.length
  end
  def self.reset_all
    @@all.clear
  end

  def buy_fish(fish)
    @new_fish = Fish.new(fish)
    @pets[:fishes] << @new_fish


  end

  def say_species
    return "I am a #{@species}."
  end

  def buy_cat(cat)
    @new_cat = Cat.new(cat)
    @pets[:cats] << @new_cat
  end
  def buy_dog(dog)
    @new_dog = Dog.new(dog)
    @pets[:dogs] << @new_dog

  end

  def walk_dogs
    dog_list = @pets[:dogs]
    dog_list.collect do |dog|
      dog.mood = "happy"
    end


  end

  def play_with_cats
    cat_list = @pets[:cats]
    cat_list.collect do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    fish_list = @pets[:fishes]
    fish_list.collect do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    @pets.collect do |key, value|
      value.each do |pet|
        pet.mood = "nervous"
      end
    end
    @pets.clear
  end

  def list_pets
    return "I have #{@pets[:fishes].size} fish, #{@pets[:dogs].size} dog(s), and #{@pets[:cats].size} cat(s)."
  end


end
