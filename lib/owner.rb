require "pry"

class Owner

  attr_accessor :pets, :name
  attr_reader :species

  @@all = [] # keeps track of all owners

  def initialize(species)
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self

  end

  def self.all
    @@all
  end

  def self.count
    self.all.count
  end

  def self.reset_all
    self.all.clear
  end

  def say_species
    "I am a #{self.species}."
  end

  def buy_fish(name)
    pets[:fishes] << Fish.new(name)
  end

  def buy_dog(name)
    pets[:dogs] << Dog.new(name)
  end

  def buy_cat(name)
    pets[:cats] << Cat.new(name)
  end

  def walk_dogs
    self.pets[:dogs].each {|dog| dog.mood = "happy"}

  end

  def play_with_cats
    self.pets[:cats].each {|cat| cat.mood = "happy" }
  end

  def feed_fish
      self.pets[:fishes].each {|fish| fish.mood = "happy" }
  end

  def sell_pets
    self.pets.values.each do |pet_type|
      pet_type.each do |pet|
        pet.mood = "nervous"
      end
      pet_type.clear
    end
  end

  def list_pets
    count = self.pets.values.collect {|pet_type| pet_type.count}
    "I have #{count[0]} fish, #{count[2]} dog(s), and #{count[1]} cat(s)."

  end

end
