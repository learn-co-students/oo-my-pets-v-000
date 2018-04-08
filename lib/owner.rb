require 'pry'

class Owner
  # code goes here
  attr_accessor :name, :pets
  #attr_reader :cat,:dog, :fish

  @@all = []


  def initialize(name)
    @name = name
    @@all << self
    @pets = {fishes: [], cats: [], dogs: []}
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

  def species
    species = "human"
  end

  def say_species
   "I am a #{species}."
 end

 def buy_fish(name)
     @pets[:fishes] << Fish.new(name)
 end

 def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
 end

 def buy_cat(name)
 @pets[:cats] << Cat.new(name)
 end

 def walk_dogs
   Dog.mood = "happy"
 end


end
