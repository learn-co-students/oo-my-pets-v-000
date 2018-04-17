require 'pry'
class Owner
  # code goes here
  attr_accessor :fish, :cat, :dog, :name
  attr_reader :species

  @@ownercount = 0

    def self.all
      @@all
    end

    def self.count
      @@count
    end

    def initialize(species)
      @species = species
      @all
    end


end
