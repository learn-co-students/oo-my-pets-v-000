class Owner
  
  attr_accessor :pets, :name
  attr_reader :species
  
  @@all = []
  @@count = 0
  
  def initialize(species)
    @species=species
    @@all << self
    @pets= {fishes: [], cats:[], dogs: []}
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@all.length
  end
  
  def self.reset_all
    @@all= []
  end
  
  def say_species
    p "I am a #{@species}."
  end
  
  def buy_fish
    
  end
  
  
end