require 'pry'

class Owner
  attr_reader :species
  attr_accessor :name, :pets

  @@owners = []  #keeps track of owners (not pets)

  def initialize(owner)
    @owner = owner
    @species = "human"
    @@owners << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def self.all
    @@owners
  end

  def self.reset_all
    @@owners.clear
  end

  def self.count
    count = @@owners.length
  end

  def say_species
    "I am a #{@species}."
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)." #could write helpermethods to make this legible
  end

  def buy_fish(name)
  @pets[:fishes] << Fish.new(name)
  #binding.pry
  end

  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end


  def walk_dogs
    @pets[:dogs].each do |dog|  #accesses each object of dog key in pets hash and sets its mood to happy.
      dog.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].each do |kitty|
      kitty.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    @pets.each do |species, pets| #@pets hash ==> species (:fishes, :cats, :dogs) ==> individual pets
      pets.each do |pet|  #==> each individual pet do:
        pet.mood = "nervous"
      end
    end
    @pets.clear #@pets = {:fishes => [], :dogs => [], :cats => []}
  end
end
