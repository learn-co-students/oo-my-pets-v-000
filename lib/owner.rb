class Owner
  @@all = []
  #attr_reader :species
  attr_accessor :pets, :species
  
  def initialize(owner)
  @@all << self
  @pets = {fishes: [], cats: [], dogs: []}
  
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
  
  def species(species)
    self.species = species
  end
  
  
  
end