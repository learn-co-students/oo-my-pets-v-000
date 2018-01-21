require 'pry'

class Owner
  # code goes here
  attr_accessor :pets, :name
  attr_reader :species
  @@all =  []
  
   

   def initialize(human)
    @species = human
    @@all << self

    @pets = {fishes: [], cats: [], dogs: []}
  
   end

   def self.all
    @@all 
   end
   #chain methods on the end of class methods 
   def self.reset_all
    self.all.clear
   end

   def self.count
    self.all.count
   end

   def species
    @species
   end

   def say_species
     "I am a human."
   end
#retrieve fish/cat/dog value from hash and add new instance to value
   def buy_fish(name)
    new_fish = Fish.new(name)
    self.pets[:fishes] << new_fish 
    #@pets[:fishes]
   end

   def buy_cat(name)
    new_cat = Cat.new(name)
    self.pets[:cats] << new_cat
   end

   def buy_dog(name)
    new_dog = Dog.new(name)
    self.pets[:dogs] << new_dog
   end
   
   def walk_dogs
    #self.pets[:dogs] 
    #dog.mood = "happy"
    self.pets[:dogs].map do |dogs|
      dogs.mood = "happy"
    end
   end

   def play_with_cats
    self.pets[:cats].map do |cats|
      cats.mood = "happy"
    end
   end
end