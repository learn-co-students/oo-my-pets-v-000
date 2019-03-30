require 'pry'

class Owner
  @@all = []
  attr_reader :species
  attr_accessor :name, :pets

  def initialize(species)
    @@all << self
    @species = species
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    self.all.clear
  end

  def say_species
    "I am a #{species}."
  end

  def buy_fish(name)
    self.pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    self.pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    self.pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    self.pets[:dogs].each {|d| d.mood = 'happy'}
  end

  def play_with_cats
    self.pets[:cats].each {|c| c.mood = 'happy'}
  end

  def feed_fish
    self.pets[:fishes].each {|f| f.mood = 'happy'}
  end

  def sell_pets
    self.pets.each do |k, v|
      pets[k].each {|p| p.mood = 'nervous'}
    end
    self.pets.clear
  end

  def list_pets
    f = self.pets[:fishes].count
    d = self.pets[:dogs].count
    c = self.pets[:cats].count
    "I have #{f} fish, #{d} dog(s), and #{c} cat(s)."
  end
end
