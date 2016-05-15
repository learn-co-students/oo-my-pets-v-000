require 'pry'

class Owner
  @@all = []
  attr_accessor :name, :dogs, :cats
  attr_reader :species, :pets, :fishes


  def initialize(species)
    @species = species
    self.save
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    @@count = @@all.count
  end

  def self.reset_all
    @@all.clear
  end

  def species=(name)
    raise NewNameError, "Can't change the owner's species to #{name}. Owner's species is set to #{@species}." if @name != name
  end

  def say_species
   "I am a #{@species}."
  end


  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
  end

  def walk_dogs
    @pets[:dogs].each {|dog| dog.mood("happy")}
  end


end
