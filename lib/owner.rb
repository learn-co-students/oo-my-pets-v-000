require 'pry'

class Owner
  attr_accessor :owner, :cat, :dog, :fish, :pets, :fishes, :cats, :dogs, :mood
  attr_reader :species, :name
  @@all = []

  # Owner Class methods can initialize an owner
  # Owner Class methods keeps track of the owners that have been created
  # Owner Class methods can reset the owners that have been created
  # Owner Class methods can count how many owners have been created
  def initialize(owner)
    @owner = owner
    @species = species
    @@all << self
  end

  def self.all
    @@all
  end

  def self.reset_all
    self.all.clear
  end

  def self.count
    @@all.length
  end

  # Owner instance methods #species initializes with a species
  def species
    @species = owner
  end

  # Owner instance methods #say_species  can say its species
  def say_species
    "I am a #{self.species}."
  end

  # Owner instance methods #name can have a name
  def name=(name)
    @name = name
  end

  # Owner instance methods #pets is initialized with a pets attribute as a hash with 3 keys
  def pets
    @pets ||= {:fishes => [], :dogs => [], :cats => []}
  end

  # Owner instance methods #buy_fish can buy a fish that is an instance of the Fish class
  # Owner instance methods #buy_fish knows about its fishes
  def buy_fish(name)
    self.pets[:fishes] << Fish.new(name)
    @pets
  end

  # Owner instance methods #buy_cat can buy a cat that is an instance of the Cat class
  # Owner instance methods #buy_cat knows about its cats
  def buy_cat(name)
    self.pets[:cats] << Cat.new(name)
    @pets
  end

  # Owner instance methods #buy_dog can buy a dog that is an instance of the Dog class
  # Owner instance methods #buy_dog knows about its dogs
  def buy_dog(name)
    self.pets[:dogs] << Dog.new(name)
    @pets
  end

  # Owner instance methods #walk_dogs walks the dogs which makes the dogs' moods happy
  def walk_dogs
    pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  # Owner instance methods #play_with_cats plays with the cats which makes the cats moods happy
  def play_with_cats
    pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  # Owner instance methods #feed_fish feeds the fishes which makes the fishes' moods happy
  def feed_fish
    pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  # Owner instance methods #sell_pets can sell all its pets, which make them nervous
  def sell_pets
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  # Owner instance methods #list_pets can list off its pets
  def list_pets
    puts "I have #{pets[:fishes].length} fish, #{pets[:cats].length} cats, & #{pets[:dogs].length} dogs"
  end
end
