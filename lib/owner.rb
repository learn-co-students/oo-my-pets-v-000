require 'pry'
class Owner
  attr_accessor :name, :pets
  attr_reader :species

  @@all = []

  def initialize (species)
    @species = species
    self.save
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def save
    @@all << self
    self
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.length
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish (name)
    @pets[:fishes] << Fish.new(name)
  end

  def buy_cat (name)
    @pets[:cats] << Cat.new(name)
  end

  def buy_dog (name)
    @pets[:dogs] << Dog.new(name)
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
    @pets[:fishes].each {|fish| fish.mood = "nervous"}
    @pets[:cats].each {|cat| cat.mood = "nervous"}
    @pets[:dogs].each {|dog| dog.mood = "nervous"}
    @pets.clear
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end


end
