require "pry"
class Owner
  # code goes here
  attr_reader :species
  attr_accessor :name, :pets

  @@all = []

  def initialize(name)
    @species = "human"
    @name = name
    @pets = {fishes: [], dogs: [], cats: []}
    @@all << self
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all = []
  end

  def self.count
    @@all.count
  end

  def say_species
    if species =~ /\A[aeiou]/
      "I am an #{species}."
    else
      "I am a #{species}."
    end
  end

  def buy_fish(name)
    fish = Fish.find_or_create_by_name(name)
    pets[:fishes] << fish
  end

  def buy_cat(name)
    cat = Cat.find_or_create_by_name(name)
    pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.find_or_create_by_name(name)
    pets[:dogs] << dog
  end

  def walk_dogs
    pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    pets.each_value do | pet_array |
      pet_array.each do | pet |
        pet.mood = "nervous"
      end
    end
    @pets = {fishes: [], dogs: [], cats: []}
  end

  def list_pets
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end

end

dog = Owner.new("dog")
puts dog.say_species
octopus = Owner.new("octopus")
puts octopus.say_species
