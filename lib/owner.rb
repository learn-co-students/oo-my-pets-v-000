class Owner
  # code goes here
  @@owners = []

  attr_accessor :name
  attr_reader :species, :fishes

  def initialize(owner)
    @owner = owner
    @@owners << self
    @species = "human"
  end

  def self.reset_all
    @@owners.clear
  end

  def self.count
    @@owners.count
  end

  def self.all
    @@owners
  end

  def say_species
    "I am a #{self.species}."
  end

  def pets
  end

  def buy_fish(fish)
    self.fishes = Fish.new(fish)
  end
end
