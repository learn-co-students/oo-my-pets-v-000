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
   self.pets[:dogs].each do |dogs|
      dogs.mood = "happy"
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


 def list_pets
   "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
 end

  def sell_pets

    self.pets.each do |category, pets|
      pets.each do |pet|
       pet.mood = "nervous"
     end
   end
    self.pets.each do |category, pet |
      pet.clear
    end
  end

end
