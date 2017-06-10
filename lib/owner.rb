require 'pry'
class Owner
  # code goes here
  @@all = []

  def self.all
    @@all
  end

  attr_accessor :species

  def initialize(species)
    @species = species
    @@all << self 
  end

  def self.create
    @@all << self.new
  end

end
