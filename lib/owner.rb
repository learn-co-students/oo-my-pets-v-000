class Owner
attr_accessor :name, :pets
attr_reader :species 

@@all = []
@@count = 0

def initialize(name)
@pets = {fishes: [], cats: [], dogs: []}
@@all << self
@@count +=1
@species = "human"
end

def self.all
  @@all
end

def self.count
  @@count
end

def self.reset_all
  @@count = 0
end

def say_species
  "I am a human."
end

def buy_fish(name)
  pets[:fishes] << Fish.new(name)
end

def buy_cat(name)
  pets[:cats] << Cat.new(name)
end

def buy_dog(name)
  pets[:dogs] << Dog.new(name)
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
  pets.each do |type, animals|
  animals.each do |animal|
  animal.mood = "nervous"
end
  animals.clear
end
end
  
  def list_pets
    "I have #{pets[:fishes].size} fish, #{pets[:dogs].size} dog(s), and #{pets[:cats].size} cat(s)."
  end
end
