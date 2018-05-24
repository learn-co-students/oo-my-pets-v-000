
class Owner
  attr_accessor :name
  attr_reader :pets, :species
  @@owner = []
  
  def initialize(species)
    @pets = { fishes: [], cats: [], dogs: [] }
    self.species = species
    @@owner << self
  end
  
  def self.all
    @@owner
  end
  
  def self.reset_all
    self.all.clear
  end
  
  def self.count
    self.all.size
  end
  
  def species=(species)
    if @species == nil
      @species = species
    else
      raise NoMethodError, "Species is already set as #{self.species}"
    end
  end
  
  def say_species
    "I am a #{self.species}."
  end
  
  # def buy_fish
  
end



# spacing