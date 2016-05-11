require'pry'
class Owner
  # code goes here

  attr_accessor :pets, :name, :owner_list
  attr_reader :species

  @@owner_list = []

  def initialize(species)
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
    @@owner_list << self
  end

  def self.all
    @@owner_list
  end

  def self.reset_all
    #binding.pry
    self.all.clear
  end

  def say_species
    #species = self.all.species[0].species
    "I am a #{@species}."
  end

  def name=(name)
    @name = name
  end

  def buy_fish(fish)
    fish = Fish.new(fish)
    @pets[:fishes] << fish
  end

  def buy_cat(cat)
    cat = Cat.new(cat)
    @pets[:cats] << cat
  end

  def buy_dog(dog)
    dog = Dog.new(dog)
    @pets[:dogs] << dog
  end

  def walk_dogs
    @pets[:dogs][0].tap {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats][0].tap {|cat| cat.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes][0].tap {|fish| fish.mood = "happy"}
  end

  def sell_pets
    #binding.pry
    @pets[:dogs].each {|dog| dog.mood = "nervous"}
    @pets[:cats].each {|cat| cat.mood = "nervous"}
    @pets[:fishes].each {|fish| fish.mood = "nervous"}
    @pets.clear
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end















end