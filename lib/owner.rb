require 'pry'

class Owner
  # code goes here

  attr_reader :species
  attr_accessor :name, :pets

  @@owners = []


  def initialize(species)
    @species = species
    @pets = {:fishes => [], :dogs => [], :cats => []}
    save
  end

  def self.reset_all
    @@owners.clear
  end

  def self.all 
    @@owners
  end

  def self.count
    @@owners.count
  end

  def save
    @@owners << self
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(name)
    f = Fish.new(name)
    @pets[:fishes] << f
  end

  def buy_cat(name)
    c = Cat.new(name)
    @pets[:cats] << c
  end

  def buy_dog(name)
    d = Dog.new(name)
    @pets[:dogs] << d
  end

  def walk_dogs
    @pets[:dogs].each {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].each {|cat| cat.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].each {|fish| fish.mood = "happy"}
  end

  def sell_pets
    @pets.each do |animal, array|
      array.each {|x| x.mood = "nervous" ;}
      array.clear
    end
  end

  def list_pets
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end


  
end