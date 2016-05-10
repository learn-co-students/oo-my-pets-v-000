require 'pry'

class Owner

  #attr_accessor
  attr_reader :species
  @@all = []
  
  def initialize(species)
    @species = species
    @@all << self
  end

  def self.reset_all
    @@all = []
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def say_species
    puts "I am a #{@species}."
  end


end

b = Owner.new("human")

puts b.say_species