require 'pry'

class Owner
  attr_accessor :pets, :name
  attr_reader :species
  
  @@all = []
  
  def initialize(owner)
    @owner = owner
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
    @species = "human"
   
  end
  
  def self.all
   @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.count
  end

  def say_species
    return "I am a #{@species}."
  end

  def buy_fish(name)
    fish = Fish.new(name)
    pets[:fishes] << fish

  def buy_cat(name)
    cat = Cat.new(name)
    pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    pets[:dogs] << dog
  end

  def walk_dogs
    pets[:dogs].each do |walk_dog|
    walk_dog.mood = "happy"
  end
 end
end
  
  def play_with_cats
    pets[:cats].each do |play|
      play.mood = "happy"
    end
  end
  
  def feed_fish
     pets[:fishes].each do |food|
      food.mood = "happy"
    end
  end
 
 def sell_pets
   pets.each do |sold, animal|
     animal.each do |new_mood|
       new_mood.mood = "nervous"
      end
      animal.clear
    end
  end

  def list_pets
    return "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end

end
