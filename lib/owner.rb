require 'pry'
class Owner

  attr_accessor :name, :pets
  attr_reader :species
  #attr_writer :mood

  @@owners = []

  def initialize(species)
    @@owners << self
    @species = species
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def self.all
    @@owners
  end

  def self.reset_all
    self.all.clear
  end

  def self.count
    self.all.size
  end

  def say_species
    "I am a #{@species}."
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
    pets[:dogs].each { |dog| dog.mood = 'happy' }
  end

  def play_with_cats
    pets[:cats].each { |cat| cat.mood = 'happy' }
  end

  def feed_fish
    pets[:fishes].each { |fish| fish.mood = 'happy' }
  end

  def sell_pets
    pets.each do |pet_symbol, pet_type|
      pet_type.each { |pet| pet.mood = 'nervous' }
    end

    pets.each do |pet_symbol, pet_type|
      pet_type.clear
    end

  end

  def list_pets
    "I have #{pets[:fishes].size} fish, #{pets[:dogs].size} dog(s), and #{pets[:cats].size} cat(s)."
  end

end