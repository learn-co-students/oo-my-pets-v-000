class Owner

attr_reader :species, :name

@@all = []

def self.all 
  @@all << self 
end

def self.count 
  self.all.count
end

def self.reset_all 
  @@all.clear
end

def initialize(species)
  @species = species 
end

def say_species
  self.species 
end


end