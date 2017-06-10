require 'pry'
class Owner
  # code goes here
  @@all = []
  @@count = 0

  def self.all
    @@all
  end

  attr_accessor :species, :name, :pets

  def initialize(species)
    @species = species
    @@all << self # self is like Cat.new, instantiated
    @@count+=1
    @pets = {:fishes =>[], :dogs => [], :cats => []}
  end

  def species=(new_species)
    raise ChangeNameError if new_species != species
    @species = new_species
  end

  def self.reset_all
    @@all.clear
    @@count = 0
  end

  def self.count
    @@count
  end

  def say_species
    "I am a #{species}."
  end

  def name=(owner_name)
    @name = owner_name
  end

  def buy_fish()
    #need to find a way to link an instance, or an object, of the Fish class
  end

end
