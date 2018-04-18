class Owner
  attr_accessor :pets, :owner, :name
  attr_reader :species
  @pets = {fishes: [], cats: [], dogs: []}
  @@all = []
  
  def initialize(pets)
    @pets = {fishes: [], cats: [], dogs: []}
    @species = species
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.count
    self.all.count
  end
  
  def self.reset_all
    
  end
  
end