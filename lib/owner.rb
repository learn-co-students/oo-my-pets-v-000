require 'pry'
class Owner
  attr_accessor :pets, :name
  attr_reader :species
  @@all = []
  ### ALL OWNERs that have EVER been created

  def self.all
    @@all
  end

  def self.count
    self.all.count
  end

  def self.reset_all
    self.all.clear
  end


  def species
    @species
  end

  def name
    @name
  end

  def initialize(pets)
    @species = "human"
    @name = nil

    @pets = { fishes: [], cats: [], dogs: [] }

    @@all << self
  end


  # def buy_fish(name)
  #
  #   self.pets[:fishes] << name
  #
  # end

  def buy_cat(name)
  end

  def buy_dog(name)
  end


  def say_species
    "I am a #{self.species}."
  end
binding.pry
end
