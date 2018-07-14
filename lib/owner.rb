class Owner
  # code goes here
  attr_accessor :pets, :name
  attr_reader :species

  def initialize(name, species = "human")
    @name = name
    @pets = {fishes: [], cats: [], dogs: []}
    @species = species
    @@all_owners << self
  end

  @@all_owners = []

  def self.all
    @@all_owners
  end

  def say_species
    "I am a #{@species}."
  end

  def self.reset_all
    self.all.count
  end



end
