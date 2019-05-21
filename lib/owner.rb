require "pry"
class Owner
  attr_accessor :pets, :name
  attr_reader :species
  @@all = []

  def initialize(species)
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
    @species = species
  end

  def self.all
    @@all
  end

  def self.reset_all
    self.all.clear
  end

  def self.count
    self.all.count
  end

  def say_species
    "I am a #{species}."
  end

  def buy_fish(name)
    self.pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    self.pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
  self.pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    pets[:dogs].collect {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    pets[:cats].collect {|cat| cat.mood = "happy"}
  end

  def feed_fish
    pets[:fishes].collect {|fish| fish.mood = "happy"}
  end

  def sell_pets
    self.reset_pets_mood
    self.pets.clear
  end

  def reset_pets_mood
    self.pets.each do |type, pets|
      pets.each do |pet|
        pet.mood = "nervous"
      end
    end
  end

  def list_pets
    "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
  end

end
