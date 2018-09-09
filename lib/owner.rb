require 'pry'

class Owner
attr_accessor :pets, :name
attr_reader :species
@@all = []
  
  def initialize(pets)
    @pets = {fishes: [], cats: [], dogs: []}
    @species = "human"
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.count
    total = @@all.length
    total
  end
  
  def self.reset_all
    @@all.clear
  end
  
  def say_species
    return "I am a #{@species}."
  end
  
  def buy_fish(name)
    new_fish = Fish.new(name)
    @pets[:fishes] << new_fish
  end
  
  def buy_cat(name)
    new_cat = Cat.new(name)
    @pets[:cats] << new_cat
  end
  
  def buy_dog(name)
    new_dog = Dog.new(name)
    @pets[:dogs] << new_dog
  end
  
  def walk_dogs
    @pets[:dogs].each {|d| d.mood = "happy"}
  end
  
  def play_with_cats
    @pets[:cats].each {|c| c.mood = "happy"}
  end
  
  def feed_fish
    @pets[:fishes].each {|f| f.mood = "happy"}
  end
  
  def sell_pets
    @pets.each do |type, pets|
      if pets.empty? == false
        pets.each {|a| a.mood = "nervous"}
        pets.clear
      end
    end
  end
  
  def list_pets
    return "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end
end