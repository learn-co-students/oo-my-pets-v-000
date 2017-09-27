require 'pry'
class Owner
  # code goes here
attr_accessor :cat, :dog, :fish, :pets, :name
attr_reader :species

@@all = []

  def initialize(species)
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
  end

def self.all
  @@all
end

def self.reset_all
  @@all.clear
end

def self.count
  @@all.size
end

def say_species
  "I am a human."
end

def buy_fish(name)
  name = Fish.new(name)
  self.pets[:fishes] << name
end

def buy_cat(name)
  name = Cat.new(name)
  self.pets[:cats] << name
end

def buy_dog(name)
  name = Dog.new(name)
  self.pets[:dogs] << name
end

def walk_dogs
  self.pets[:dogs].each do |dog|
    dog.mood = "happy"
  end
end

def play_with_cats
  self.pets[:cats].each do |cat|
    cat.mood = "happy"
  end
end

def feed_fish
  self.pets[:fishes].each do |fish|
    fish.mood = "happy"
  end
end

def sell_pets
    self.pets.each do |type, pet|
      pet.each do |name|
        name.mood = "nervous"
    end
  end
  self.pets.clear
end

def list_pets
  "I have #{self.pets[:fishes].length} fish, #{self.pets[:dogs].length} dog(s), and #{self.pets[:cats].length} cat(s)."
end

end
