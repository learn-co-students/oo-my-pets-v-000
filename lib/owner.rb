require 'pry'

class Owner

  attr_accessor :name, :pets
  attr_reader :species

  # keeps track of the owners that have been created"
  @@all = []
  @@all_count = 0

  def initialize(species)
    #@name = name
    @species = species
    # keeps track of the owners that have been created"
    @@all_count += 1
    @@all << self
    #is initialized with a pets attribute as a hash with 3 keys
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  # keeps track of the owners that have been created"
  def self.all
    @@all
  end

  # can reset the owners that have been created
  def self.reset_all
    @@all_count = 0
  end

  # can count how many owners have been created
  def self.count
    @@all_count
  end

  # can say its species
  def say_species
    "I am a human."
  end


  def pets
    @pets
  end

  # can buy a fish that is an instance of the Fish class
  def buy_fish(name)
    # initialize new Fish instance and push into :fishes array in the :pets hash
    self.pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    # initialize new Cat instance and push into :cats array in the :pets hash
    self.pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    # initialize new Dog instance and push into :dog array in the :pets hash
    self.pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    # iterate over each dog in :dogs array and set mood to happy
    self.pets[:dogs].each{|dog| dog.mood = "happy"}
  end

  def play_with_cats
    self.pets[:cats].each{|cat| cat.mood = "happy"}
  end

  def feed_fish
  self.pets[:fishes].each{|fish| fish.mood = "happy"}
  end

  def sell_pets
    # iterate over :pets hash
    self.pets.each do |type, pets|
      # iterate or each pet
      pets.each do |pet|
        pet.mood = "nervous"
      end
    end
    # empty hash
    pets.clear
  end

  def list_pets
    "I have #{self.pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end

end
