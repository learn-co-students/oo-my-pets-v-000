require 'pry'

class Owner
  attr_reader :species
  attr_accessor :name, :pets

  @@all = []

  def initialize(species = "human")
    @species = species
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all.clear
  end

  def say_species
    "I am a human."
  end

  def pets
    @pets
  end

  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
  end

  def walk_dogs
    @pets[:dogs].each {|x| x.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].each {|x| x.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].each {|x| x.mood = "happy"}
  end

  def sell_pets
    @pets.each do |animal, pets|
      pets.each do |pet|
        pet.mood = "nervous"
      end
    end
    @pets.clear
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end

end