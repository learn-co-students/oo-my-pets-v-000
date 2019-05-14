class Owner
  attr_accessor :owner, :fish, :cat, :dog, :pets, :name
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

  def say_species
    "I am a #{species}."
  end

  def buy_fish(fish)
    fish = Fish.new
    pets[:fishes] << fish
  end
end
