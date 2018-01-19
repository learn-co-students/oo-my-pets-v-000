require 'pry'
#rspec ./spec/owner_spec.rb:11 # Owner Class methods keeps track of the owners that have been created
#rspec ./spec/owner_spec.rb:15 # Owner Class methods can reset the owners that have been created
#rspec ./spec/owner_spec.rb:20 # Owner Class methods can count how many owners have been created
#rspec ./spec/owner_spec.rb:26 # Owner Class methods can initialize an owner
#rspec ./spec/owner_spec.rb:34 # Owner instance methods #species initializes with a species
#rspec ./spec/owner_spec.rb:44 # Owner instance methods #say_species  can say its species
#rspec ./spec/owner_spec.rb:50 # Owner instance methods #name can have a name
#rspec ./spec/owner_spec.rb:58 # Owner instance methods #pets is initialized with a pets attribute as a hash with 3 keys
#rspec ./spec/owner_spec.rb:64 # Owner instance methods #buy_fish can buy a fish that is an instance of the Fish class
#rspec ./spec/owner_spec.rb:73 # Owner instance methods #buy_fish knows about its fishes
#rspec ./spec/owner_spec.rb:80 # Owner instance methods #buy_cat can buy a cat that is an instance of the Cat class
#rspec ./spec/owner_spec.rb:89 # Owner instance methods #buy_cat knows about its cats
#rspec ./spec/owner_spec.rb:97 # Owner instance methods #buy_dog can buy a dog that is an instance of the Dog class
#rspec ./spec/owner_spec.rb:107 # Owner instance methods #buy_dog knows about its dogs
#rspec ./spec/owner_spec.rb:114 # Owner instance methods #walk_dogs walks the dogs which makes the dogs' moods happy
#rspec ./spec/owner_spec.rb:123 # Owner instance methods #play_with_cats plays with the cats which makes the cats moods happy
#rspec ./spec/owner_spec.rb:132 # Owner instance methods #feed_fish feeds the fishes which makes the fishes' moods happy
#rspec ./spec/owner_spec.rb:141 # Owner instance methods #sell_pets can sell all its pets, which make them nervous
#rspec ./spec/owner_spec.rb:158 # Owner instance methods #list_pets can list off its pets
class Owner
  @@all = []
  # code goes here
  attr_accessor :pets, :name
  def species
    @species
  end
  def say_species
    "I am a #{species}."
  end
  def initialize(name)
    @name = name
    @pets = {fishes: [], cats: [], dogs: []}
    @species = "human"
    @@all << self
  end
  def self.all
    @@all
  end
  def self.reset_all
    @@all = []
  end
  def self.count
    @@all.size
  end
  def buy_fish(name)
    temp = Fish.new(name)
    self.pets[:fishes] << temp

  end
  def buy_cat(name)
    temp = Cat.new(name)
    self.pets[:cats] << temp
  end
  def buy_dog(name)
    temp = Dog.new(name)
    self.pets[:dogs] << temp
  end
  def list_pets
    fish = self.pets[:fishes].size
    dogs = self.pets[:dogs].size
    cats = self.pets[:cats].size
    "I have #{fish} fish, #{dogs} dog(s), and #{cats} cat(s)."
  end
  def sell_pets
      self.pets.each do |key, array|
        array.each do |pet|
          pet.mood = "nervous"
        end
        #array = []
      end
      @pets = {fishes: [], cats: [], dogs: []}
  end
  def walk_dogs
    self.pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end
  def feed_fish
    self.pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end
  def play_with_cats
    self.pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end
end
