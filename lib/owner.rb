require 'pry'
class Owner
  attr_reader :species, :name
  attr_accessor :pets
  @@owners = []

  def initialize(species)
    @species = species
    @@owners << self
    @pets = {fishes: [], cats: [], dogs: []}
  end

  def self.all
    @@owners
  end

  def self.count
    self.all.count
  end

  def self.reset_all
    self.all.clear
  end

  def say_species
    "I am a #{species}."
  end

  def name= (name)
    @name = name
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
    @pets.map do |key, value|
      if key == :dogs
        value.collect {|dog| dog.mood = "happy"}
      end #if key
    end #@pets.map do
  end #def walk_dogs

  def play_with_cats
    @pets.map do |key, value|
      if key == :cats
        value.collect {|cat| cat.mood = "happy"}
      end #if key
    end #@pets.map do
  end #def play_with_cats

  def feed_fish
    @pets.map do |key, value|
      if key == :fishes
        value.collect {|fish| fish.mood = "happy"}
      end #if key
    end #@pets.map do
  end #def feed_fish

  def sell_pets
    @pets.map do |key, value|
      value.collect {|pets| pets.mood = "nervous"}
    end #@pets.map do
    @pets.clear
  end #def sell_pets

  def list_pets
    "I have #{@pets.fetch(:fishes).count} fish, #{@pets.fetch(:dogs).count} dog(s), and #{@pets.fetch(:cats).count} cat(s)."
  end #def list_pets

end #class Owner
