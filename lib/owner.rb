require 'pry'

class Owner
  # knows all it's pets
  #can buy a pet
  #set the name of a pet
  #change a pet's mood by feeding walking or playing with it
  #sell all of it's pets

  attr_accessor :pets, :name, :all
  attr_reader :species, :say_species, :list_pets
  @@all = []
  @@count = 0

  def initialize(name)
    @name = name
    @@all << self
    @pets = {fishes: [], cats: [], dogs: []}
    @@count += 1
  end

  def species
    @species = "human"
  end

  def say_species
    @say_species = "I am a human."
  end

  def buy_fish(name)
    fish = Fish.new(name)
    self.pets[:fishes] << fish
    #make pet, initialize name, add to @pets
  end

  def feed_fish
    self.pets[:fishes].each {|i| i.mood = 'happy'}
  end

  def buy_cat(name)
    cat = Cat.new(name)
    self.pets[:cats] << cat
  end

  def play_with_cats
    self.pets[:cats].each {|i| i.mood = 'happy'}
  end

  def buy_dog(name)
    dog = Dog.new(name)
    self.pets[:dogs] << dog
  end

  def walk_dogs
    self.pets[:dogs].each {|i| i.mood = 'happy'}
  end

  def list_pets
    @list_pets = "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
  end

  def self.count
    @@count
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all=[]
    @@count = 0
  end

  def sell_pets
    self.pets[:fishes].each {|i| i.mood = 'nervous'}
    self.pets[:cats].each {|i| i.mood = 'nervous'}
    self.pets[:dogs].each {|i| i.mood = 'nervous'}
    @pets = {fishes: [], cats: [], dogs: []}
  end

end
