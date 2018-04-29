require 'pry'

class Owner
  attr_accessor :name, :pets
  attr_reader :species
  # code goes here
  @@all = []
  @@count = 0

  def initialize(species)
    @species = species
    self.class.all << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@count += 1
  end

  def self.all
    @@all
  end

  def self.count
    @@count
  end

  def self.reset_all
    self.all.clear
    @@count = 0
  end

  def say_species
    "I am a #{self.species}."
  end

  def pets
    @pets

  end

  def buy_fish(name)
    new_fish_instance = Fish.new(name)
    @pets[:fishes] << new_fish_instance
  end

  def buy_cat(name)
    new_cat_instance = Cat.new(name)
    @pets[:cats] << new_cat_instance
  end

  def buy_dog(name)
    new_dog_instance = Dog.new(name)
    @pets[:dogs] << new_dog_instance
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
    @pets[:fishes].each {|fish| fish.mood = "nervous"}
    @pets[:fishes].clear
    @pets[:dogs].each {|dog| dog.mood = "nervous"}
    @pets[:dogs].clear
    @pets[:cats].each {|cat| cat.mood = "nervous"}
    @pets[:cats].clear
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end

end
