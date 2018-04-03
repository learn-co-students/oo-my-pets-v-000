class Owner
attr_accessor :name
attr_reader :species 

@@all = []

def self.all 
  @@all
end

def self.count 
  self.all.count
end

def self.reset_all 
  @@all.clear
end

def initialize(species)
  @species = species 
  @@all << self
  @dogs = []
  @fishes = []
  @cats = []
end

def say_species
  "I am a #{self.species}."
end

def pets
  pet_hash = {}
end

end