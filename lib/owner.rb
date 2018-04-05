require 'pry'

class Owner
  # code goes here
attr_accessor :pets, :name
attr_reader :species
  @@all = []


def initialize(species)
  @pets = {fishes:[], cats:[], dogs:[]}
  @species = species
  @@all<< self unless @@all.include?(self)
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

def say_species
  "I am a #{@species}."
end

def buy_fish(name)
  name = Fish.new(name)
  name.owner = self
  @pets[:fishes]<< name
end

def buy_cat(name)
  name = Cat.new(name)
  name.owner = self
  @pets[:cats]<<name
end

def buy_dog(name)
  name = Dog.new(name)
  name.owner = self
  @pets[:dogs]<< name
end

def walk_dogs
  @pets.each do |pet, name|

    if pet == :dogs
      name.each do |dog|
      dog.mood= "happy"
    end
    end
  end
end

def play_with_cats
  @pets.each do |pet, name|
    if pet == :cats
      name.each do |cat|
        cat.mood = "happy"
      end
    end
  end
end

def feed_fish
  @pets.each do |pet, name|
    if pet == :fishes
      name.each do |fish|
        fish.mood = "happy"
      end
    end
  end
end


def sell_pets
  @pets.each do |pet, name|
    name.each do |animal|
      animal.mood = "nervous"
    end
  end
  @pets.clear
end

def list_pets
fish = @pets[:fishes].length
dogs = @pets[:dogs].length
cats = @pets[:cats].length
"I have #{fish} fish, #{dogs} dog(s), and #{cats} cat(s)."
end

end
