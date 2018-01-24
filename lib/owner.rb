class Owner
  # code goes here
  attr_accessor :name, :pets
  attr_reader :species
  OWNERS = []

  def initialize(species)
    @pets = {fishes: [], cats: [], dogs: []}
    @species = species
    OWNERS << self
  end

  def self.all
    OWNERS
  end

  def say_species
    "I am a #{species}."
  end

  def buy_fish(name)
    pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    pets[:dogs] << Dog.new(name)
  end

  def self.reset_all
    OWNERS.clear
  end

  def self.count
    OWNERS.length
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
    pets[:dogs].each do |dog|
        dog.mood = "nervous"
    end
    pets[:dogs].clear

    pets[:fishes].each do |fish|
        fish.mood = "nervous"
    end
    pets[:fishes].clear

    pets[:cats].each do |cat|
        cat.mood = "nervous"
    end
    pets[:cats].clear

  end

  def list_pets
    "I have #{pets[:fishes].length} fish, #{pets[:dogs].length} dog(s), and #{pets[:cats].length} cat(s)."
  end

end
