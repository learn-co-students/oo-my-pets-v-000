class Owner
  # code goes here
  attr_accessor :pets, :name
  attr_reader :species
  @@all = []
  def initialize(name)
    @name = name
    @species = "human"
    @pets = {fishes:[], cats: [], dogs:[]}
    @@all << self
  end

  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end

  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end

  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    @pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def sell_pets
    @pets.each do |type, data|
      data.each do |pet|
        pet.mood = "nervous"
      end
    end
    @pets = {fishes:[], cats: [], dogs:[]}
  end

  def list_pets
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end

  def say_species
    "I am a #{@species}."
  end

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all = []
  end
end
