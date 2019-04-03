class Owner

@@all = []

attr_accessor :name, :pets
attr_reader :species

def self.all
  @@all
end

def initialize(species)
  @species = species
  @pets = {fishes: [], cats: [], dogs: []}
  @@all << self
end

def self.count
  # @@all.count works also
  @@all.size
end









end
