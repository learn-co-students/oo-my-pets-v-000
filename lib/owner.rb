require "pry"

class Owner

  attr_accessor :name, :pets, :fishes
  attr_reader :species

  @@all = []

  def self.all
    @@all
  end

  def self.count
    # self.all = 0
    self.all.count
  end

  def self.reset_all
    self.all.clear
  end

  def initialize(species)
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}

    @@all << self

  end

  def say_species
    # binding.pry
    "I am a #{@species}."
  end

  def buy_fish(name)
    
    self.pets[:fishes].each do |fish|
    end

  end

end
