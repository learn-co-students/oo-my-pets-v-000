require 'pry'

class Owner

  @@all = []

  attr_accessor :pets, :name
  attr_reader :species

  def initialize(species)
    @pets = {fishes:[], cats:[], dogs:[]}
    @species = species
    @@all << self
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all = []
  end

  def self.count
    all.size
  end

  def say_species
    "I am a #{species}."
  end

  def buy_fish(fish_name)
    pets[:fishes] << Fish.new(fish_name)
  end

  def buy_cat(cat_name)
    pets[:cats] << Cat.new(cat_name)
  end

  def buy_dog(dog_name)
    pets[:dogs] << Dog.new(dog_name)
  end

  def walk_dogs
    pets[:dogs].collect {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    pets[:cats].collect {|cat| cat.mood = "happy"}
  end

  def feed_fish
    pets[:fishes].collect {|fish| fish.mood = "happy"}
  end

  def sell_pets
    pets.each do |type, animals| 
      animals.each do |animal| 
        animal.mood = "nervous"
      end
      animals.clear
    end
  end

  def list_pets
    "I have #{pets[:fishes].size} fish, #{pets[:dogs].size} dog(s), and #{pets[:cats].size} cat(s)."
  end

end