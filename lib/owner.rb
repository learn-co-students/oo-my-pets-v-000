require 'pry'
class Owner

  attr_accessor :owner, :pets
    attr_reader :species, :name

    @@all = []


  def initialize(owner)
    @owner = owner
    @pets = {fishes: [], cats: [], dogs: []}
    @species = owner
    @@all << self
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
   @@all.size
  end

  def say_species
    "I am a #{species}."
  end

  def name=(name)
   @name = name
  end

  def buy_fish(name)
   fish = Fish.new(name)
   pets[:fishes] << fish
  end

  def buy_cat(name)
   cat = Cat.new(name)
   pets[:cats] << cat
  end

  def buy_dog(name)
   dog = Dog.new(name)
   pets[:dogs] << dog
  end

   def walk_dogs
    pets[:dogs].each do |dog|
      dog.mood = "happy"
   end
  end

  def play_with_cats
   pets[:cats].each do |cat|
    cat.mood = "happy"
  end
 end

  def feed_fish
   pets[:fishes].each do |fish|
    fish.mood = "happy"
   end
  end

  def sell_pets
    pets[:fishes].each do |fish|
     fish.mood = "nervous"
    end
    pets[:cats].each do |cat|
     cat.mood = "nervous"
    end
    pets[:dogs].each do |dog|
    dog.mood = "nervous"
    end
    pets[:fishes].clear
    pets[:cats].clear
    pets[:dogs].clear
  end

  def list_pets
    "I have #{pets[:fishes].size} fish, #{pets[:dogs].size} dog(s), and #{pets[:cats].size} cat(s)."
  end
end
