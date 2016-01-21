class Owner
  # code goes here
  attr_accessor :pets, :name
  attr_reader :species

  @@all = []

  def initialize(name, species = "human")
    @name = name
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
  end

  def self.owner
    @@all << owner
  end

  def say_species
    "I am a #{species}."
  end

  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
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
    @pets.each do |key, pet|
      pet.each do |pets|
        pets.mood = "nervous"
      end
    end
    @pets.clear
  end

  def list_pets
    "I have #{@pets[:fishes].size} fish, #{@pets[:dogs].size} dog(s), and #{@pets[:cats].size} cat(s)."
  end

  def self.all 
    @@all 
  end

  def self.reset_all
   @@all.clear
  end

  def self.count
    @@all.size
  end





end