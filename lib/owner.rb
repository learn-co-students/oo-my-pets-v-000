require 'pry'

class Owner
# code goes here
attr_accessor :name, :pets
attr_reader :species

  @@all = []

  def initialize(species)
    @@all << self
    @name = name
    @species = "human"
    @pets = {:fishes => [], :dogs => [], :cats => []}
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
  return "I am a #{species}."
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
  pets[:fishes].each do |fish| fish.mood = "happy"
end
end

def sell_pets
  pets.each do |species, type|
    type.each do |one|
      one.mood = "nervous"
end
type.clear
end

end

def list_pets
   "I have #{pets[:fishes].size} fish, #{pets[:dogs].size} dog(s), and #{pets[:cats].size} cat(s)."

end



 # pets.each{|kind, val| val.each{|one| puts one.name}} < write about later

end
