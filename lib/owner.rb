require "pry"
class Owner
@@all = []

attr_accessor :name, :pets
attr_reader :species

def initialize(name)
  @name = name
  @species = "human"
  @pets = {:fishes => [], :dogs => [], :cats => []}
  @@all << self
end

def self.all
  @@all
end

def self.count
  @@all.count
end

def self.reset_all
  @@all.clear
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
  self.pets[:dogs].map do |d|
    d.mood = "happy"
  end
end

def play_with_cats
  self.pets[:cats].map do |c|
    c.mood = "happy"
  end
end

def feed_fish
  self.pets[:fishes].map do |f|
    f.mood = "happy"
  end
end

def sell_pets
  self.pets.map do |key, value|
    value.map do |v|
      v.mood = "nervous"
    end
  end
  self.pets.map do |key,value|
    value.clear
  end
end

def list_pets
  "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
end

end
