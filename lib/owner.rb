require 'pry'

class Owner
  attr_accessor :pets, :name
  attr_reader :species
  @@all = []
  @@owner_count = 0

  def initialize(species)
    @species = species
    @pets = {:fishes => [], :cats => [], :dogs => []}
    @@all << self
    @@owner_count += 1
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
    @@owner_count = 0
  end

  def self.count
    @@owner_count
  end

  def say_species
    "I am a #{self.species}."
  end

  def buy_fish(name)
    fishy = Fish.new(name)
    @pets[:fishes] << fishy
  end

  def buy_cat(name)
    kitty = Cat.new(name)
    @pets[:cats] << kitty
  end

  def buy_dog(name)
    doggy = Dog.new(name)
    @pets[:dogs] << doggy
  end

  def walk_dogs
    pets[:dogs].each {|doggie| doggie.mood = "happy"}
  end

  def play_with_cats
    pets[:cats].map {|cat| cat.mood = "happy"}
  end

  def feed_fish
    pets[:fishes].map {|fish| fish.mood = "happy"}
  end

  def sell_pets
    @pets.each do |type, pet|
      pet.each do |a_pet|
        a_pet.mood = "nervous"
      end
    end
    @pets.clear
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end


end

binding.pry
