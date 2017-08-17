# Owner
#   Class methods
#     keeps track of the owners that have been created
#     can reset the owners that have been created
#     can count how many owners have been created
#     can initialize an owner
#   instance methods
#     #species
#       initializes with a species
#       can't change its species
#     #say_species
#       can say its species
#     #name
#       can have a name
#     #pets
#       is initialized with a pets attribute as a hash with 3 keys
#     #buy_fish
#       can buy a fish that is an instance of the Fish class
#       knows about its fishes
#     #buy_cat
#       can buy a cat that is an instance of the Cat class
#       knows about its cats
#     #buy_dog
#       can buy a dog that is an instance of the Dog class
#       knows about its dogs
#     #walk_dogs
#       walks the dogs which makes the dogs' moods happy
#       #play_with_cats
#       plays with the cats which makes the cats moods happy
#     #feed_fish
#       feeds the fishes which makes the fishes' moods happy
#     #sell_pets
#       can sell all its pets, which make them nervous
#     #list_pets
# "I have 2 fish, 3 dog(s), and 1 cat(s)."
#       can list off its pets

require 'pry'

class Owner
  # code goes here
  attr_accessor :pets, :fish, :cat, :dog
  attr_reader :species, :name, :say_species

  @@owners = []

  def initialize(name)
    @species = "human"
    @pets = {fishes: [], cats: [], dogs: []}
    @name = name
    @@owners << self
  end

  def self.all
    @@owners
  end

  def self.reset_all
    @@owners.clear
  end

  def self.count
    @@owners.count
  end

  def say_species
    i_am_human = "I am a human."
  end

  def name=(name)
    @name = name
  end

  def buy_fish(fish_name)
    new_fish = Fish.new(fish_name)
    @pets[:fishes] << new_fish
  end

  def buy_cat(cat_name)
    new_cat = Cat.new(cat_name)
    @pets[:cats] << new_cat
  end

  def buy_dog(dog_name)
    new_dog = Dog.new(dog_name)
    @pets[:dogs] << new_dog
  end

  def walk_dogs
    @pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    @pets[:fishes].each do |fish|
      fish.mood = "nervous"
    end
    @pets[:fishes].clear
    @pets[:dogs].each do |dog|
      dog.mood = "nervous"
    end
    @pets[:dogs].clear
    @pets[:cats].each do |cat|
      cat.mood = "nervous"
    end
    @pets[:cats].clear
  end

  def list_pets
    num_fish = @pets[:fishes].count
    num_fish = num_fish.to_s
    #binding.pry
    num_dog = @pets[:dogs].count
    num_dog = num_dog.to_s
    num_cat = @pets[:cats].count
    num_cat = num_cat.to_s
    p "I have " + num_fish + " fish, " + num_dog + " dog(s)," + " and " + num_cat + " cat(s)."
  end
#
#
#
#
end
