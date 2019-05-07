class Owner
  # code goes here
  attr_accessor :name, :pets
  attr_reader :species

  @@all = []

  def initialize(species)
    @species = species
    @name = name
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
  end

#  def save
#    @@all << self
#  end

  def self.all
    @@all
  end
  def self.count
    @@all.length
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_cat(name)
    new_name = Cat.new(name)
    @pets[:cats] << new_name
  end

  def buy_dog(name)
    new_name = Dog.new(name)
    @pets[:dogs] << new_name
  end

  def buy_fish(name)
    new_name = Fish.new(name)
    @pets[:fishes] << new_name
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
    #@pets = {}
    @pets[:dogs].each do |dog|
      dog.mood = "nervous"
    end
    @pets[:cats].each do |cat|
      cat.mood = "nervous"
    end
    @pets[:fishes].each do |fish|
      fish.mood = "nervous"
    end
    @pets = {}

  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end

  def self.reset_all
    @@all = []
  end
end
