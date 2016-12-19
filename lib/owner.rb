require 'pry'

class Owner
  attr_accessor :name, :pets
  attr_reader :species

  @@all = [ ]

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    self.class.all << self
    @species = "human"
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.count
  end

  def say_species
    "I am a human."
  end

  def buy_fish(name)
    pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    pets[:dogs].select { |m| m.mood = "happy" }
  end

  def play_with_cats
    pets[:cats].select { |m| m.mood = "happy" }
  end

  def feed_fish
    pets[:fishes].select { |m| m.mood = "happy" }
  end

  def sell_pets
      pets.each { |type, pet| pets == {}; pet.mood = "nervous" }
  end
end
