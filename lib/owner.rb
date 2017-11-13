class Owner
  attr_accessor :pets, :name
  attr_reader :species
  @@all = []

  def initialize(species = "human", name)
    @pets = {fishes: [], cats: [], dogs: []}
    species = "human"
    @species = species
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.reset_all
    self.all.clear
  end

  def self.count
    self.all.size
  end

  def say_species
    "I am a #{species}."
  end

  def buy_fish(name)
    name = Fish.new(name)
    self.pets[:fishes] << name
  end

  def buy_cat(name)
    name = Cat.new(name)
    self.pets[:cats] << name
  end

  def buy_dog(name)
    name = Dog.new(name)
    self.pets[:dogs] << name
  end

  def walk_dogs
    self.pets[:dogs].map{|dog|dog.mood = "happy"}
  end

  def play_with_cats
    self.pets[:cats].map{|cat|cat.mood = "happy"}
  end

  def feed_fish
    self.pets[:fishes].map{|fish|fish.mood = "happy"}
  end

  def sell_pets
    self.pets.each do |species,pets|
      pets.each{|pets|pets.mood = "nervous"}
      pets.clear
    end
  end

  def list_pets
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end
end
