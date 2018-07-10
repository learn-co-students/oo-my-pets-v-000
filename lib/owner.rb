class Owner

  attr_accessor :name, :pets
  attr_reader :species
  
  @@owners = []

  def initialize(species, pets = {fishes: [], cats: [], dogs: []})
    @species = species
    @pets = pets
    @@owners << self
  end
  
  def buy_cat/dog/fish(name)
    @name = name
    @pets << name
  end


end