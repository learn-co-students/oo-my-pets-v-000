require 'pry'

class Owner
  # code goes here
  attr_accessor :name, :pets
  attr_reader :species
  
  ##class methods
  @@owners = []
  
  def self.all
     @@owners 
  end
  
  def self.reset_all
     @@owners.clear 
  end
  
  def self.count
     @@owners.size 
  end
  
  def initialize(name)
    @name = name
    @pets = {fishes: [], dogs: [], cats: []}
    @species = "human"
    @@owners << self
  end
  
  ##instance methods
  def say_species
     "I am a human."
  end
  
  def buy_fish(name)
      fish = Fish.new(name)
      self.pets[:fishes] << fish
  end
  
  def buy_dog(name)
      dog = Dog.new(name)
      self.pets[:dogs] << dog
  end
  
  def buy_cat(name)
      cat = Cat.new(name)
      self.pets[:cats] << cat
  end
  
  def walk_dogs
      make_happy(self.pets[:dogs])
  end
  
  def play_with_cats
      make_happy(self.pets[:cats])
  end
  
  def feed_fish
      make_happy(self.pets[:fishes]) 
  end
  
  def make_happy(array)
      array.each {|pet| pet.mood = "happy"}
  end
  
  def make_nervous(array)
      array.each {|pet| pet.mood = "nervous"}
  end
  
  def get_species
     self.pets.keys 
  end
  
  def sell_pets
     get_species.each do |species|
         make_nervous(self.pets[species])
         self.pets[species].clear
     end
  end
  
  def list_pets
      
      #attempt to do it abstractly in case there are more species
      a = get_species.map do |species|
          species.to_s == "fishes" ? "#{self.pets[species].size} fish" : "#{self.pets[species].size} #{species.to_s.chomp("s")}(s)"
      end
    a[-1] = "and " + a[-1]
    "I have " + a.join(", ") + "."
  end
  
end