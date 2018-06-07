require 'pry'
class Owner
  # code goes here
  attr_accessor :pets
  attr_reader :species
  attr_accessor :name

  @@all =[]

  def initialize(species)
    @pets = {fishes: [], cats: [], dogs: []}
    @species = species
  #  binding.pry
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    self.all.count
  end

  def self.reset_all
    self.all.clear
  end

  def say_species
    "I am a #{self.species}."
  end


  def buy_fish(fish_n)
    fish = Fish.new(fish_n)
    @pets[:fishes] << fish
  #  binding.pry
  end

  def buy_cat(cat_n)
    cat = Cat.new(cat_n)
    @pets[:cats] << cat

  end

  def buy_dog(dog_n)
    dog = Dog.new(dog_n)
    @pets[:dogs] << dog
  end

  def walk_dogs
    if self.pets[:dogs] !=[]
    self.pets[:dogs].each do
      |dog| dog.mood = "happy"
    end
    else
    end
  end

  def play_with_cats
  if self.pets[:cats] !=[]
    self.pets[:cats].each do
      |cat| cat.mood = "happy"
    end
  else
  end
  end

  def feed_fish
    if self.pets[:fishes] !=[]
      self.pets[:fishes].each do
        |fish| fish.mood = "happy"
      end
    else
    end

  end

  def sell_pets

    self.pets[:dogs].each do
      |dog| dog.mood = "nervous"
    end
    self.pets[:dogs].clear

    self.pets[:fishes].each do
      |fish| fish.mood = "nervous"
    end
    self.pets[:fishes].clear

    self.pets[:cats].each do
      |cat| cat.mood = "nervous"
    end
    self.pets[:cats].clear

  end

  def list_pets
    "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
  end
end
