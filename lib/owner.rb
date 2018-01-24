require 'pry'
class Owner
  # code goes here
  attr_accessor :name, :pets
  attr_reader :species
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
    @species = "human"
    @pets = {:fishes => [], :dogs => [], :cats => []}
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
  return "I am a #{@species}."
  end
  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
    #binding.pry
  end
  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
    #binding.pry
  end
  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
    #binding.pry
  end
  def walk_dogs
    @pets[:dogs].each{|x| x.mood = "happy"}
  end
  def play_with_cats
    @pets[:cats].each{|x| x.mood = "happy"}
  end
  def feed_fish
    @pets[:fishes].each{|x| x.mood = "happy"}
  end
  def sell_pets
    @pets.each {|x,y| y.each{|x| x.mood = "nervous"}}
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end
  def list_pets
   "I have #{pets[:fishes].size} fish, #{pets[:dogs].size} dog(s), and #{pets[:cats].size} cat(s)."
  end
end
