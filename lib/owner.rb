require "pry"
class Owner
  @@all = []
  attr_reader :species
  attr_accessor :name, :pets

  def initialize(species, pets = {:fishes => [], :dogs => [], :cats => []})
    @species = species
    @pets = pets
    #binding.pry
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all.clear
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(name)
    self.pets[:fishes] = Fish.new(name)
  binding.pry
  end


end
