require 'pry'

class Owner
  # code goes here

  attr_accessor :pets, :name
  attr_reader :species

  @@all = []


  def initialize(name)
    @pets = {fishes: [], cats: [], dogs: []} #initialized with a pets attribute as a hash with 3 keys
    @species = "human" #species initializes with a species
    @name = name #instance methods #name can have a name
    @@all << self
  end

  def buy_fish(name) #instance methods #buy_fish can buy a fish that is an instance of the Fish class
    new_fish = Fish.new(name)
    self.pets[:fishes] << new_fish
  end

  def buy_cat(name) #instance methods #buy_cat can buy a cat that is an instance of the Cat class
    new_cat = Cat.new(name)
    self.pets[:cats] << new_cat
  end

  def buy_dog(name) #instance methods #buy_dog can buy a dsog that is an instance of the Dog class
    new_dog = Dog.new(name)
    self.pets[:dogs] << new_dog
  end

  def walk_dogs #walks the dogs which makes the dogs' moods happy
    self.pets[:dogs].each { |dog| dog.mood = "happy" }
  end

  def play_with_cats #plays with the cats which makes the cats moods happy
    self.pets[:cats].each { |cat| cat.mood = "happy" }
  end

  def feed_fish #feeds the fishes which makes the fishes' moods happy
    self.pets[:fishes].each { |fish| fish.mood = "happy" }
  end

  def sell_pets #can sell all its pets, which make them nervous

    self.pets.each do |pet_type, name|
      name.each do |animal|
        animal.mood = "nervous"
      end
    end

    self.pets = {fishes: [], cats: [], dogs: []}

  end

  def list_pets #list_pets can list off its pets

    "I have #{self.pets[:fishes].length} fish, #{self.pets[:dogs].length} dog(s), and #{self.pets[:cats].length} cat(s)."

  end

  def self.all #keeps track of the owners that have been created
    @@all
  end

  def self.reset_all #can reset the owners that have been created
    @@all = []
  end

  def self.count #can count how many owners have been created
    @@all.length
  end

  def say_species
    "I am a #{self.species}."
  end

end
