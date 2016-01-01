require "pry"

class Owner
  attr_accessor :cat, :dog, :fish, :pets, :name
  attr_reader :species

#METHODS FOR LIST OF OWNERS
  @@owners = []

  def self.all
    @@owners
  end

  def self.reset_all
    self.all.clear
  end

  def self.count
    @@owners.count
  end

#INITIALIZING OWNER
  def initialize(species)
    @pets = {fishes: [], cats: [], dogs: []}
    @species = species
    self.class.all << self
  end

# ACTION METHODS

  def say_species
    "I am a #{species}."
  end

#---- BUYING PETS

  def buy_fish(name)
    fish = Fish.new(name)
    self.pets[:fishes] <<  fish
    fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    self.pets[:cats] <<  cat
    cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    self.pets[:dogs] <<  dog
    dog
  end
#---- HAPPY PETS
  def walk_dogs
    self.pets[:dogs].each { |dog| dog.mood = "happy"}
  end

  def play_with_cats
    self.pets[:cats].each { |cat| cat.mood = "happy"}
  end

  def feed_fish
    self.pets[:fishes].each { |fish| fish.mood = "happy"}
  end

#---- LIST PETS
  def list_pets
    "I have #{pets[:fishes].size} fish, #{pets[:dogs].size} dog(s), and #{pets[:cats].size} cat(s)."
  end


#---- SELL PETS

  def sell_pets
    self.pets.each {|type,each_pet| each_pet.each { |pet| pet.mood = "nervous"}}

    self.pets.clear
  end

end


binding.pry