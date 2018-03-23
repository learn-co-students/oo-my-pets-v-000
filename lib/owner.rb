require "pry"

class Owner

  attr_accessor :name
  attr_reader :species

  @@all = []

  def self.all
    @@all
  end

  def self.count
    # self.all = 0
    self.all += 1
  end

  def self.clear_all
    @@all =[]

  end

  def initialize(species)
    @species = species

    @@all << self

  end
  # code goes here
end
