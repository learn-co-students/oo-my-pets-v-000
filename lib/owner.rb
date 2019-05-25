require 'pry'

class Owner

  attr_accessor :pets, :name
  attr_reader :species

  @@all = []

  #Class Methods
  def self.all
    @@all
  end

  def self.reset_all
    self.all.clear
  end

  def self.count
    self.all.size
  end

  def initialize(species = "human")
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
  end

  def say_species
    "I am a human."
  end

  def buy_fish(name)
    self.pets[:fishes] << Fish.new(name)
  end

  def buy_dog(name)
    self.pets[:dogs] << Dog.new(name)
  end

  def buy_cat(name)
    self.pets[:cats] << Cat.new(name)
  end

  def walk_dogs
    self.pets[:dogs].each {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    self.pets[:cats].each {|cat| cat.mood = "happy"}
  end

  def feed_fish
    self.pets[:fishes].each {|fish| fish.mood = "happy"}
  end

  def sell_pets
    self.pets.each {|species, pet|
      pet.each {|pet| pet.mood = "nervous"}
    }
    self.pets.clear
  end

  def list_pets

    fish_number = self.pets[:fishes].count
    dog_number = self.pets[:dogs].count
    cat_number = self.pets[:cats].count
    "I have #{fish_number} fish, #{dog_number} dog(s), and #{cat_number} cat(s)."
  end

end
