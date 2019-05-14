class Owner
  attr_accessor :owner, :pets
  attr_reader :species

  @@all = []

  def initialize(owner)
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
    @species = "human"
  end

  def self.all
    @@all
  end

  def self.count
    all.count
  end

  def self.reset_all
    all.clear
  end

  def species
    @species
  end
end
