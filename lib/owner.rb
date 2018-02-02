require 'pry'

class Owner
  attr_accessor :name
  attr_reader :species
  
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @species = "human"
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
  
  def say_species
    "I am a #{self.species}."
  end
  
  def pets
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end
  
  def buy_fish(name)
    item = Fish.new(name)
    @pets[:fishes] << item
  end
  
end

