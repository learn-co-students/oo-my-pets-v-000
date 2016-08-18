class Owner
  # code goes here
  attr_accessor :pets, :name
  attr_reader :species
  @@all = []

  def initialize(name)
      @name = name
      @species = species     #initializes owner species to be human
      #@say_species = "I am a #{@species}."  #allows owner to say its species
      @@all << self    #logs all instances of owners in @@all array
      @pets = {fishes: [], cats: [], dogs: []}
  end

  def self.all
      @@all
  end

  def self.reset_all
      @@all.clear
  end

  def self.count
      @@all.length
  end

  def say_species
   "I am a #{species}."
  end

  def buy_fish(name)
      pets[:fishes] << Fish.new(name)
  end



end
