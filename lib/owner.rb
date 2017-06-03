class Owner
  attr_accessor :pets, :name
  attr_reader :species
  OWNERS  = []
  def initialize(species)
    @pets = {fishes: [], cats: [], dogs: []}
    @name = name
    @species = species
    OWNERS << self
  end

  def self.all
    OWNERS
  end

end
