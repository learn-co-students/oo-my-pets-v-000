class Owner
  # code goes here


attr_accessor :name, :pets
attr_reader :species

@@all = []

def initialize(species)
  @species = species
  @pets = {fishes:[], cats:[], dogs:[]}
  @@all << self
end

def self.all
@@all
end

def self.count
  @@all.size
end

def self.reset_all
  @@all = []
end

def say_species
  "I am a #{self.species}."
end

def buy_fish(name)
  new_fish = Fish.new(name)
  @pets[:fishes] << new_fish
end

def buy_cat(name)
  new_cat = Cat.new(name)
  @pets[:cats] << new_cat
end

def buy_dog(name)
  new_dog = Dog.new(name)
  @pets[:dogs] << new_dog
end

def walk_dogs
  pets[:dogs].each do |dog|
  dog.mood = "happy"
end
end

def play_with_cats
  pets[:cats].each do |cat|
    cat.mood = "happy"
end
end

def feed_fish
  pets[:fishes].each do |fish|
    fish.mood = "happy"
end
end

def sell_pets
  pets.each do |the_species, the_pets|
    the_pets.each do |pet|
  pet.mood = "nervous"
end
end
pets.clear
end

def list_pets
  "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
end
end
