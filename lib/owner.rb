class Owner
  attr_accessor :pets, :species
  @pets = {fishes: [], cats: [], dogs: []}
  @@all = []
  
  def initialize(pets)
    @pets = pets
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