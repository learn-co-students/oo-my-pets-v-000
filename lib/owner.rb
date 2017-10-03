
require 'pry'
class Owner
  # Owner should know about its pets, with @pets equal to {fishes: [], cats: [], dogs: []}
attr_accessor :name, :pets
attr_reader :species

OWNERS = []
#how do you choose between a class constant and a class variable?

 def self.all
   OWNERS
 end

 def self.reset_all
   OWNERS.clear
 end

 def self.count
   OWNERS.size
 end

  def initialize(species)
    @species = species
    @name = name
    self.pets= {:fishes => [], :dogs => [], :cats => []}
    OWNERS << self
  end


  def say_species
    "I am a #{species}."
  end

  def buy_fish(name)
    fish = Fish.new(name)
    pets[:fishes] << fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    pets[:dogs] << dog
  end

  def walk_dogs
    pets[:dogs].each {|dog| dog.mood="happy" }
  end


  def play_with_cats
    pets[:cats].each {|c| c.mood="happy"}
  end

  def feed_fish
    pets[:fishes].each {|f| f.mood="happy"}
  end

  def sell_pets
    pets.each do |type, pets|
      pets.each {|name| name.mood = "nervous"}
    end
    pets.clear
  end

  def list_pets

    pets.each do |type, pets|
      pets
    end
     "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end


end


  #
  # def buy_cat/dog/fish(name)
  #   make instance of the appropriate pet and initialize it with that name
  #   associate the new pet instance with the owner by adding it to the approp array-value of the pets hash stored in owner pets.
  #
  # end
  #
  # def owner plays with cat or feeds fish or walks dog, pet gets happier
  #     this has an effect on a mood method in their instances
  # end
  #
  # def pets
  #   this method stores all of an owner's pets the array it creates is full of instances of dogfish/cat class
  #
  #
