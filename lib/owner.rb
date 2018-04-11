require 'pry'
class Owner
  attr_reader :species
  attr_accessor :pets, :owner, :name
  @@count_owners = 0


  def initialize(species)
    @species = species
    @owner = self
    @@count_owners += 1
    @name = name
    @pets = {fishes: [],cats: [], dogs: []}
  end


  def self.reset_all
    @@count_owners
  end

  def say_species
  return "I am a #{species}."
  end

  def buy_fish(name)
    fish = Fish.new(name)
    pets[:fishes] << fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    pets[:dogs] << dog
  end

  def walk_dog
    self.pets[:dogs].mood= "Happy"
  end

  def play_with_cats
    self.pets[:cats].mood= "Happy"
    binding.pry

  end

  def feed_fish
    Fish.mood= "Happy"
  end

  def sell_pets
  end

  def list_pets
    "I have #{pets[:fishes].length} fish, #{pets[:dogs].length} dog(s), and #{pets[:cats].length} cat(s)."
  end

end
