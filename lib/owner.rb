require 'pry'

class Owner
  #Owner knows about all his pets
  #Able to buy a pet
  #Set the name of a pet
  #Can change the pet's mood through walking, feeding, or playing with it
  #Can sell all of its pets

  @@all = []
  attr_accessor :name, :pets
  attr_reader :species

  def initialize(name)
    @name = name
    @species = "human"
    @pets = {fishes: [], dogs: [], cats: []}
    self.class.all << self
  end

  def list_pets
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end

  def clear_all_pets
    @pets.each {|type, pets| pets.clear}
  end

  def all_pets_become_nervous
    @pets.each {|type, pets|
      pets.each {|pet| pet.mood = "nervous"}
    }
  end

  def sell_pets
    all_pets_become_nervous
    clear_all_pets
  end

  def walk_dogs
    @pets[:dogs].each {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].each {|cat| cat.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].each {|fish| fish.mood = "happy"}
  end

  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end

  def species=(species)
    raise CannotChangeNameError
  end

  def say_species
    "I am a human."
  end

  def self.all
    @@all
  end

  def self.reset_all
    self.all.clear
  end

  def self.count
    self.all.length
  end
end
