class Owner
  attr_accessor :name, :pets
  attr_reader :species

  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
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
    self.all.clear
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(name)
    @pets[:fishes] << Fish.new(name) #i think i need a method to call pet hash to add items to it
  end
end
