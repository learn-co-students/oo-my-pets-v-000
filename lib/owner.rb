require 'pry'
class Owner
  @@all = []
  attr_accessor :pets, :name
  def initialize(species)
    @pets = {fishes: [], cats: [], dogs: []}
    @name = name
    @species = species
    @@all << self
  end
  def species
    return @species
  end
  def say_species
    return "I am a #{@species}."
  end
  def self.all
    return @@all
  end
  def self.reset_all
    @@all = []
  end
  def self.count
    return @@all.length
  end
  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
  end
  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
  end
  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
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
  def list_pets
    dog_num = self.pets[:dogs].length
    cat_num = self.pets[:cats].length
    fish_num = self.pets[:fishes].length
    return "I have #{fish_num} fish, #{dog_num} dog(s), and #{cat_num} cat(s)."
  end
  def sell_pets
    self.pets[:cats].each do |cat|
      cat.mood = "nervous"
    end
    self.pets[:fishes].each do |fish|
      fish.mood = "nervous"
    end
    self.pets[:dogs].each do |dog|
      dog.mood = "nervous"
    end
    @pets = []
  end
end
