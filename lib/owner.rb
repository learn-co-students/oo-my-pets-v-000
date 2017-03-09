require 'pry'
class Owner
  # code goes here
  attr_accessor :pets
  #binding.pry
  @@all = []
  @@all_count = 0
  #pets[:fishes] = 0
  def name=(name)#setter method CrUd
    @name=name
  end
  def name #getter method cRud
    @name
    #binding.pry
  end
  #def pets
  #  @pets
  #end
  #def species=(species)#setter method CrUd
  #  @species=species
  #end
  def species
    @species #getter method cRud
  end
  def initialize(name)
    @name = name
    @@all.push self
    @@all_count = @@all_count + 1
  #  pets[:fishes] = pets[:fishes] + 1
    @species = "human"
    @pets = {:fishes => [], :dogs => [], :cats => []}
    #bindSing.pry
  end
  def self.all
    @@all
  end
  def self.reset_all
    #binding.pry
    @@all_count = 0
    self.count
    #binding.pry
  end
  def self.count
    @@all_count
    #binding.pry
  end
  def say_species
    "I am a human."
  end
  #def pets
    #binding.pry
  #  pets = {:fishes => [], :dogs => [], :cats => []}
  #end
  def buy_fish(fish)
    a_fish = Fish.new(fish)
    #binding.pry
    self.pets[:fishes] << a_fish
  end
  def buy_cat(cat)
    a_cat = Cat.new(cat)
    self.pets[:cats] << a_cat
  end
  def buy_dog(dog)
    a_dog = Dog.new(dog)
    self.pets[:dogs] << a_dog

  end
  def walk_dogs
    #binding.pry
    #dog = Dog.new(name)#need argument to pass in "Daisy"?
    #dog.mood = "happy"
    self.pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end
  def play_with_cats
    self.pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end
  def feed_fish
    self.pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end
  def sell_pets
    #binding.pry
    self.pets[:dogs].each do |pet|
      pet.mood = "nervous"
    end
    self.pets[:cats].each do |pet|
      pet.mood = "nervous"
    end
    self.pets[:fishes].each do |pet|
      pet.mood = "nervous"
    end
    pets[:dogs] = []
    pets[:cats] = []
    pets[:fishes] = []
  end
  def list_pets
    dogs = self.pets[:dogs].count
    cats = self.pets[:cats].count
    fishes = self.pets[:fishes].count
    "I have #{fishes} fish, #{dogs} dog(s), and #{cats} cat(s)."
#binding.pry
  end
end
