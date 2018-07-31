require 'pry'
class Owner
  # code goes here
  @@all = []
  attr_accessor :name, :pets, :owner
  attr_reader :species


  def initialize(owner)
    @owner = owner
    @@all << self
    @species = "human"
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear

  end

  def self.count
    @@all.count
  end



  def say_species
    "I am a #{@species}."
  end

  def buy_fish(name)
    self.pets[:fishes] << Fish.new(name)

  end

  def buy_cat(name)
    self.pets[:cats] << Cat.new(name)

  end

  def buy_dog(name)
    self.pets[:dogs] << Dog.new(name)

  end

  def walk_dogs
    self.pets[:dogs].each {|dog| dog.mood="happy"}

  end

  def play_with_cats

    self.pets[:cats].each {|cat| cat.mood="happy"}

  end

  def feed_fish

    self.pets[:fishes].each {|fish| fish.mood="happy"}

  end

  def sell_pets
    self.pets.each{ |pet,pet_name| pet_name.each{ |animal| animal.mood="nervous" }}
    pets.clear

  end

  def list_pets

    puts "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."

  end
  binding.pry
end
