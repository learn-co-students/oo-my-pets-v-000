class Owner
  attr_reader :species
  attr_accessor :name, :pets

  @@all = []

  def initialize(species)
    @species = species
    self.pets
    @@all << self
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all = []
  end

  def self.all
    @@all
  end

  def pets
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end
end
