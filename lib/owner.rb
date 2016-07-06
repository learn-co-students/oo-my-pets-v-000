require 'pry'

class Owner

attr_reader :species
attr_accessor :name, :pets, :mood
@@all = []

def initialize(species)
  @species = species
  @@all << self
  @pets = {:fishes => [], :dogs => [], :cats => []}
end

def self.all
  @@all
end

def self.reset_all
  @@all.clear
end

def self.count
  @@all.length
end

def self.species(species)
  Owner.new(species)
end

def self.pets
  @pets
end

def say_species
  "I am a #{species}."
end

def buy_cat(name)
  new_cat = Cat.new(name)
end

def buy_dog(name)
  new_dog = Dog.new(name)
  @pets[:dogs] << new_dog
end

def buy_cat(name)
  new_cat = Cat.new(name)
  @pets[:cats] << new_cat
end

def buy_fish(name)
  new_fish = Fish.new(name)
  @pets[:fishes] << new_fish
end

def walk_dogs
  @pets[:dogs].each do |dog|
    dog.mood = "happy"
  end
end

def play_with_cats
  @pets[:cats].each do |cat|
    cat.mood = "happy"
  end
end

def feed_fish
  @pets[:fishes].each do |fish|
    fish.mood = "happy" #do fish get happy?
  end
end

def sell_pets

  @pets.each do |list, individual|
    individual.each do |pet|
      pet.mood = "nervous"
    end
  end

  @pets.each {|key, value| value.clear}

end

def list_pets
  sentence = ""
  @pets.each do |key, value|
    v = value.length
    sentence << "I have #{v} #{key}."
  end
  sentence = sentence.split('.')
  first = sentence[0].split
  first[3] = "fish"
  second = sentence[1].split
  second[3] = "dog(s)"
  second.shift
  second.shift
  third = sentence[2].split
  third[3] = "cat(s)"
  third.shift
  third.shift
  first = first.join(' ')
  second = second.join(' ')
  third = third.join(' ')

  return first + ", " + second + ", and " + third + "."

end

end
