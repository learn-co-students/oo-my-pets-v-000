require 'pry'
class Owner
  attr_reader :species
  attr_accessor :name, :pets
  @@all = []
  def initialize(species)
    @species = species
    @@all << self
    @pets = {
      fishes: [ ],
      dogs:[ ],
      cats: [ ]
    }
  end
  def self.all
    @@all
  end
  def self.reset_all
    @@all.clear
  end
  def self.count
    @@all.count
  end
  def say_species
    "I am a #{@species}."
  end
  def pets
    @pets
  end
  def buy_fish(name)
    new_fish = Fish.new(name)
    @pets[:fishes] << new_fish
    self.pets
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
    @pets[:dogs].each do |dog|
      dog.mood = "nervous"
    end
    @pets[:cats].each do |cat|
      cat.mood = "nervous"
    end
    @pets[:fishes].each do |fish|
      fish.mood = "nervous"
    end
    @pets.clear
  end
  def list_pets
    fish_count = @pets[:fishes].count
    cat_count = @pets[:cats].count
    dog_count = @pets[:dogs].count
    puts "I have #{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."
    "I have #{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."
  end
end
