require 'pry'

class Owner

  attr_accessor :pets, :name
  attr_reader :species

@@all = []


def initialize(species, pets = {:fishes=>[], :dogs=>[], :cats=>[]})
  @species = species
  @pets = pets
  @@all << self
  end


def say_species
  "I am a #{species}."
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

 def walk_dogs
   pets[:dogs].map do |dog|
     dog.mood = "happy"
   end
end

def play_with_cats
  pets[:cats].map do |cat|
    cat.mood = "happy"
  end
end

def feed_fish
  pets[:fishes].map do |fish|
    fish.mood = "happy"
  end
end

def list_pets
  my_fish = pets[:fishes].count
  my_dogs = pets[:dogs].count
  my_cats = pets[:cats].count
  "I have #{my_fish} fish, #{my_dogs} dog(s), and #{my_cats} cat(s)."
end

def sell_pets
    pets.map do  |species, pets|
      pets.map do |pet|
        pet.mood = "nervous"
      end
  end
  pets.clear
end

def self.all
  @@all
end

def self.count
  @@all.length
end


def self.reset_all
  @@all.clear
end


end
