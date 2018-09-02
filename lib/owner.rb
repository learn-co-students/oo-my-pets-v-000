require 'pry'
class Owner
  # code goes here
  attr_reader :species, :name
  attr_accessor :pets
  @@all = []
  def initialize(species)
    @species = "human"
    @@all << self
    @pets = { fishes: [], cats: [], dogs: [] }
  end
  
  def name=(name)
    @name = name
  end
  
  def self.all
    @@all
  end
  
  def self.reset_all
    @@all = []
  end
  
  def self.count
    @@all.count
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
    @pets[:dogs].each {|each_dog| each_dog.mood = "happy" }
  end
  def play_with_cats
    @pets[:cats].each {|each_cat| each_cat.mood = "happy"}
  end
  def feed_fish
    @pets[:fishes].each {|each_fish| each_fish.mood = "happy"}
  end
  
  def sell_pets

    @pets[:fishes].each {|each_fish| each_fish.mood = "nervous"}
    @pets[:cats].each {|each_cat| each_cat.mood = "nervous"}
    @pets[:dogs].each {|each_dog| each_dog.mood = "nervous" }
    
    @pets = []
  end
  
  def list_pets

    fish_count = @pets[:fishes].count
    dogs_count = @pets[:dogs].count
    cats_count = @pets[:cats].count
    
    return "I have #{fish_count} fish, #{dogs_count} dog(s), and #{cats_count} cat(s)."
  end
end