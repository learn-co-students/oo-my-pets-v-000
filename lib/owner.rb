require 'pry'

class Owner
  
  attr_accessor :pets, :name, :fishes, :cats, :dogs, :mood, :dog
  attr_reader :species, :owner

  @@all = []

  def initialize(pets, species="human")
    @pets = pets 
    @pets = {:fishes=>[], :dogs=>[], :cats=>[]}
    @@all << self
    @species = species
    @name = name
    @owner = @owner
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
    "I am a human."
  end

  def buy_fish(name)
    fishes = @pets[:fishes]
    fishes << Fish.new(name)
  end

  def buy_cat(name)
    cats = @pets[:cats]
    cats << Cat.new(name)
  end

  def buy_dog(name)
    dogs = @pets[:dogs]
    dogs << Dog.new(name)
  end
 
  def walk_dogs
    dogs = @pets[:dogs]
    dogs.each do |d|
      d.mood = "happy"
    end
  end

  def play_with_cats
    cats = @pets[:cats]
    cats.each do |c|
      c.mood = "happy"
    end
  end

  def feed_fish
    fishes = @pets[:fishes]
    fishes.each do |f|
      f.mood = "happy"
    end
  end

  def sell_pets
    pets.each do |species, pets|
      pets.each do |s|
        s.mood = "nervous"
      end
    end
    pets.clear
  end

  def list_pets
    return "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end
 
end