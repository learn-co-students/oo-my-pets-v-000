class Owner
  attr_accessor :pets, :name
  attr_reader :species

  OWNERS = []

  def initialize(species)
    @species = "human"
    OWNERS << self
    @pets = {fishes: [], cats: [], dogs: []}
  end

  def buy_cat(name)
    pets[:cats] << Cat.new(name)
  end

  def buy_fish(name)
    pets[:fishes] << Fish.new(name)
  end

  def buy_dog(name)
    pets[:dogs] << Dog.new(name)
  end

  def self.all
    OWNERS
  end

  def self.count
    OWNERS.size
  end

  def self.reset_all
    OWNERS.clear
  end

  def say_species
    "I am a human."
  end

  def walk_dogs
    pets[:dogs].each {|d| d.mood = "happy"}
  end

  def play_with_cats
    pets[:cats].each {|d| d.mood = "happy"}
  end

  def feed_fish
    pets[:fishes].each {|d| d.mood = "happy"}
  end

  def sell_pets
    pets.each do |type, pet|
      pet.each {|p| p.mood = "nervous"}
      pet.clear
    end
  end

  def list_pets
    "I have #{pets[:fishes].size} fish, #{pets[:dogs].size} dog(s), and #{pets[:cats].size} cat(s)."
  end
end
