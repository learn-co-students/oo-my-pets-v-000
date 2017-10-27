require 'pry'

class Owner
  attr_reader :owner, :species
  attr_accessor :name, :pets
  @@all = []

  def initialize(owner)
    @owner = owner
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@all << self
  end

  def self.count
    @@all.size
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all = []
  end

  def species
    @species = "human"
  end

  def say_species
    "I am a human."
  end

  def buy_fish(name)
    new_fish = Fish.new(name)
    @pets[:fishes] << new_fish
    #binding.pry
  end

  def buy_cat(name)
    new_cat = Cat.new(name)
    @pets[:cats] << new_cat
  end

  def buy_dog(name)
    new_dog = Dog.new(name)
    @pets[:dogs] << new_dog
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
    @pets[:dogs].each {|dog| dog.mood = "nervous"}
    @pets[:cats].each {|cat| cat.mood = "nervous"}
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end
end
