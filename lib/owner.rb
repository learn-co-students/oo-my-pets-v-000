require 'pry'
class Owner
  attr_accessor :pets, :name, :mood
  attr_reader :name, :species
  @@owners = []

  def initialize(species="human", name)
    @name = name
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
    @@owners << self
  end

  def self.all
    @@owners
  end

  def self.count
    @@owners.size
  end

  def self.reset_all
    self.all.clear
  end

  def say_species
    "I am a #{species}."
    end  

  def buy_fish(name)
    #@name = name
    #fish = Fish.new(name)
    #@pets[:fishes] << fish

    #can refactor to:
    pets[:fishes] << Fish.new(name)
    end

  def buy_cat(name)
    @name = name
    cat = Cat.new(name)
    @pets[:cats] << cat

    #can refactor to:
    #pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    @name = name
    dog = Dog.new(name)
    @pets[:dogs] << dog

    #can refactor to:
    #pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    #1) need to iterate over the pets hash, specifically the dogs key.
    #2) then, create a local variable "dog" for each dog value in the dogs key.
    pets[:dogs].each do |dog|
      if dog.mood == "nervous"
      dog.mood = "happy"
      end
   end
  end

  def play_with_cats
    pets[:cats].each {|cat| cat.mood = "happy"}
  end

  def feed_fish
    pets[:fishes].each {|fish| fish.mood = "happy"}
  end

  def sell_pets
    #pets[:fishes].each {|fish| fish.mood = "nervous"}
    #pets[:dogs].each {|dog| dog.mood = "nervous"}
    #pets[:cats].each {|cat| cat.mood = "nervous"}
    #self.pets.clear

    #can also do:
    pets.each do |species, animals|
      animals.each do |animal|
        animal.mood = "nervous"
      end
      animals.clear
    end
  end

  def list_pets
    "I have #{pets[:fishes].size} fish, #{pets[:dogs].size} dog(s), and #{pets[:cats].count} cat(s)."
  end

end