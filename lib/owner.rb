class Owner
  attr_accessor :pets, :name
  attr_reader :species # cannot change it species

  @@all = []

  def initialize(species)
    @pets = {fishes: [], cats: [], dogs: []} # owner knows about its pets
    @name = "" # keep track of the owners that have been created
    @species = "human" # init with a species
    @@all << self
  end

  def self.all
    @@all
  end

  # can count how many owners have been created (1)
  def self.count
    @@all.length
  end

  # (2)
  def self.reset_all
    @@all.clear
  end

  def say_species
    "I am a #{@species}." # can say its species
  end

  def buy_fish(name) # can buy a fish that is an instance of the Fish class
    pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    pets[:dogs].each{ |dog| dog.mood = "happy"}
  end

  def play_with_cats
    pets[:cats].each{ |cat| cat.mood = "happy"}
  end

  def feed_fish
    pets[:fishes].each{ |fish| fish.mood = "happy"}
  end

  def sell_pets # can sell all its pets, which make them nervous
    pets.each do |species, animals|
      animals.each do |animal|
        animal.mood = "nervous"
      end
      animals.clear
    end
  end

  def list_pets
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end
end
