require 'pry'

class Owner
  attr_accessor :name, :pets
  attr_reader :species
  @@all = [] # array for storing self - all information including owner(s) and pet(s)

  def initialize(name)
    @name = name # owner can have a name
    @species = "human"
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self # shovels owner and pet(s) instances => [#<Owner:0x00000001b3e1f0 @pets={:fishes=>[], :cats=>[], :dogs=>[]}, @species="human">]
    #binding.pry
  end

  def buy_cat(name)
    cat = Cat.new(name) # new instance of pet, initialized with a name
    pets[:cats] << cat # shovel new cat instance, @name, and @mood(default = "nervous" from Cat class) into array belonging to key of :cats
  end

  def play_with_cats
    pets[:cats].each do |cat| # iterate :cats array and change mood to happy
      cat.mood = "happy"
    end
  end

  def buy_dog(name)
    dog = Dog.new(name)
    pets[:dogs] << dog
  end

  def walk_dogs
    pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def buy_fish(name)
    fish = Fish.new(name)
    pets[:fishes] << fish
  end

  def feed_fish
    pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def say_species
    "I am a #{species}."
  end

  def self.all
    @@all #.inspect # returns all owner instances
  end

  def self.count
    @@all.size # returns number of owner instances
  end

  def self.reset_all
    @@all.clear #.inspect # clears all owner instances and returns an empty array
  end

  def list_pets
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end

  def sell_pets
    #binding.pry # most pets are happy before they are sold
    pets.each do |type, pets| # iterate arrays in pet hash
      pets.each do |pets| # iterate pets and changes their mood to "nervous"
        pets.mood = "nervous"
      end
      #binding.pry
    end
    pets.clear # clears all pets and leaves an empty hash
    #binding.pry
  end
end
