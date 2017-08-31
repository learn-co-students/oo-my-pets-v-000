require 'pry'
class Owner
  attr_accessor :name, :pets
  attr_reader :species
  @@all = []

  def initialize(species)
    @species = species
    @pets = { :fishes => [], :dogs => [], :cats => [] }
    @@all << self
  end

  def self.all
    @@all
  end

  def self.reset_all
    all.clear
  end

  def self.count
    all.length
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

  def walk_dogs
    pets[:dogs].map { |dog| dog.mood = "happy" }
  end

  def play_with_cats
    pets[:cats].map { |cat| cat.mood = "happy" }
  end

  def feed_fish
    pets[:fishes].map { |fish| fish.mood = "happy" }
  end

  def sell_pets
    pets.each do |key, pets|
      pets.map { |pet| pet.mood = "nervous" }
    end
    pets.clear
  end

  def list_pets
    pets_array = pets.each_value.map { |pets| pets.count }
    "I have #{pets_array[0]} fish, #{pets_array[1]} dog(s), and #{pets_array[2]} cat(s)."
  end
end