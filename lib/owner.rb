require "pry"

class Owner

  attr_accessor :name, :pets
  attr_reader :species

  @@all = []

  def self.all
    @@all
  end

  def self.count
    # self.all = 0
    self.all.count
  end

  def self.clear_all
    @@all =[]

  end

  def initialize(species)
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}

    @@all << self

  end

  # def species
  #   @species
  #
  # end
  # code goes here
end
