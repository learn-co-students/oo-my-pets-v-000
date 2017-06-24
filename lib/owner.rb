require 'pry'

class Owner
    
    attr_accessor :pets, :name
    attr_reader :species
    
    @@owners = []
    
    def initialize(name)
        #binding.pry
        @name = name
        @species = "human"
        @@owners << self
        @pets = {fishes: [], cats: [], dogs: []}
    end
    
    def self.all
        @@owners
    end
    
    def self.count
       self.all.length 
    end
    
    def self.reset_all
       self.all.clear 
    end
    
    def say_species
       "I am a #{self.species}." 
    end
    
    def buy_fish(name)
      new_fish = Fish.new(name)
      @pets[:fishes] << new_fish
      @pets
    end
    
    def buy_cat(name)
       new_cat = Cat.new(name) 
       @pets[:cats] << new_cat
       @pets
    end
    
    def buy_dog(name)
        new_dog = Dog.new(name)
        @pets[:dogs] << new_dog
        @pets
    end
    
    def walk_dogs
        @pets[:dogs].each { |dog| dog.mood = "happy" }
    end
    
    def feed_fish
       @pets[:fishes].each { |fish| fish.mood = "happy" } 
    end
    
    def play_with_cats
       @pets[:cats].each { |cat| cat.mood = "happy" } 
    end
    
    def sell_pets
      @pets[:dogs].each { |dog| dog.mood = "nervous" }.clear
      @pets[:fishes].each { |fish| fish.mood = "nervous" }.clear
      @pets[:cats].each { |cat| cat.mood = "nervous" }.clear 
    end
    
    def list_pets
        # binding.pry
        "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
    end
    
end