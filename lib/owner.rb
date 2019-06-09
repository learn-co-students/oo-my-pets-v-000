require 'pry'

class Owner
  attr_accessor :name, :pets, :mood
  attr_reader :species

  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    self.all.count
  end

  def self.reset_all
    self.all.clear
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    # binding.pry
    pet = @pets[:dogs]
    pet.select{|dog| dog.mood = "happy"}
    pet
  end

  def play_with_cats
    pet = @pets[:cats]
    pet.select{|cat| cat.mood = "happy"}
    pet
  end

  def feed_fish
    pet = @pets[:fishes]
    pet.select{|fish| fish.mood = "happy"}
    pet
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end

  def sell_pets
    # binding.pry
    @pets.each do |animal, array|
      array.each{|pet| pet.mood = "nervous"}
      array.clear
    end

  end


end
