require "pry"

class Owner

  attr_accessor :pets, :owners
  attr_reader :species

  @@all = []

  def initialize(pets, species, owners)
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
    @species = "human"
    @owners = []
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.count
  end

end
