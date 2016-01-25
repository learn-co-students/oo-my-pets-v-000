require 'pry'
class Owner
  attr_accessor :fishes, :cats, :dogs, :name, :pets
  attr_reader :species
  
  @@owners = []

  def initialize(species)
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @fishes = []
    @cats = []
    @dogs = []
    @species = species
    @@owners << self
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(name)
    fish = Fish.new(name)
    @fishes << fish
    @pets[:fishes] << fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    @cats << cat
    @pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    @dogs << dog
    @pets[:dogs] << dog
  end

  def walk_dogs
    @pets[:dogs].each{|dog| dog.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].each{|cat| cat.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].each{|fish| fish.mood = "happy"}
  end

  def sell_pets
    @pets.each{|type, individual| individual.each{|pet| pet.mood = "nervous"}}
    @pets.each{|type, individuals| individuals.clear}
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end

  def self.all
    @@owners
  end

  def self.reset_all
    @@owners.clear
  end

  def self.count
    @@owners.count
  end
end
