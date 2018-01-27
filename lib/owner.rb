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
#retrieve fish/cat/dog value from hash and 
#add new instance to value
   def buy_fish(name)
    new_fish = Fish.new(name)
    self.pets[:fishes] << new_fish 
   end

   def buy_cat(name)
    new_cat = Cat.new(name)
    self.pets[:cats] << new_cat
   end

   def buy_dog(name)
    new_dog = Dog.new(name)
    self.pets[:dogs] << new_dog
   end
   
   # iterate through the dogs/cats/fish key belonging to the 
   #pets object and change the mood instance method to happy
   def walk_dogs
    self.pets[:dogs].map do |dogs|
      dogs.mood = "happy"
    end
   end

   def play_with_cats
    self.pets[:cats].map do |cats|
      cats.mood = "happy"
    end
   end

   def feed_fish
    self.pets[:fishes].map do |fishes|
      fishes.mood = "happy"
    end
   end

   def sell_pets
    
    self.pets[:dogs].map do |puppers|
      puppers.mood = "nervous"
    end

    self.pets[:cats].map do |catzz|
      catzz.mood = "nervous"
    end

    self.pets[:fishes].map do |fisher|
      fisher.mood = "nervous"
    end

    pets.clear
   end

   def list_pets
    all_pets = []
    self.pets[:fishes].collect do |fisher|
      all_pets << fisher.name
    end

    self.pets[:dogs].collect do |puppers|
      all_pets << puppers.name
    end

    self.pets[:cats].collect do |catz|
      all_pets << catz.name
    end
    
    all_pets
    "I have 2 fish, 3 dog(s), and 1 cat(s)."
   end
end