require 'pry'
class Owner
  # code goes here
  attr_accessor :pets, :name, :cat, :dog, :fish
  attr_reader :species
  @@all = []

  def self.all
    @@all
  end

  def self.reset_all
    @@all = []
  end

  def self.count
    self.all.count
  end

  def initialize(species)
    self.class.all << self
    @pets = {fishes: [], cats: [], dogs: []}
    @species = species
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(name)
    fish = Fish.new(name)
    self.pets[:fishes] << fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    self.pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    self.pets[:dogs] << dog
  end

  def walk_dogs
    self.pets[:dogs].map { | dog | dog.mood = "happy" }
  end

  def play_with_cats
    self.pets[:cats].map { | cat | cat.mood = "happy" }
  end

  def feed_fish
    self.pets[:fishes].map { | fish | fish.mood = "happy" }
  end

  def sell_pets
    self.pets.each do | species, pet_array |
      pet_array.map { | pet | pet.mood = "nervous" }
      pet_array.clear
    end
  end

  def list_pets
    count = {}
    self.pets.each do | species, pets |
      count[species] = pets.count
    end
    "I have #{count[:fishes]} fish, #{count[:dogs]} dog(s), and #{count[:cats]} cat(s)."
  end

end
