class Owner
  attr_accessor :owner, :pets
  attr_reader :species
  @@all = []
  
  def initialize(species)
    @species = species
     @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
  end

  def self.all
    @@all
  end
  
   def self.count
    self.all.count
  end

  def self.reset_all
    @@all =[]
  end
  
  def self.say_species
    @species = species
    
  end
  
end