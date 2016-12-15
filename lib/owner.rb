require 'pry'
class Owner
  attr_accessor :name, :pets
  attr_reader :species
  OWNERS = []

  def initialize(name)
    @name = name
    OWNERS << self
    @species = "human"
    @pets = {:fishes => [], :cats => [], :dogs => []}
  end

  def self.all
    OWNERS
  end

  def self.reset_all
    OWNERS.clear
  end

  def self.count
    OWNERS.count
  end

  def species
    @species
  end

  def say_species
    "I am a #{self.name}."
  end

  def buy_fish(arg)
    pets[:fishes] << Fish.new(arg)
  end

  def buy_dog(arg)
    pets[:dogs] << Dog.new(arg)
  end

  def buy_cat(arg)
    pets[:cats] << Cat.new(arg)
  end

  def walk_dogs
    pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    pets.each do |key, value|
      value.each {|something| something.mood = "nervous"}
      value.clear
    end
  end

  def list_pets
    return "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end

end
