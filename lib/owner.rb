class Owner
  # code goes here
  attr_accessor :pets, :name
  attr_reader :species
  @@all = []

  def initialize(species)
      @name = name
      @species = species     #initializes owner species to be human
      @@all << self    #logs all instances of owners in @@all array
      @pets = {fishes: [], cats: [], dogs: []}  #** remember that this hash is present in the :pets setter/getter method
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

  def buy_cat(name)
      pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
      pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
      pets[:dogs].each do |dog|
          dog.mood="happy"
      end
  end

  def play_with_cats
      pets[:cats].each do |cat|
          cat.mood="happy"
      end
  end

  def feed_fish
      pets[:fishes].each do |fish|
          fish.mood="happy"
      end
  end

  def sell_pets
      pets.each do |species, individual|  #takes each pet it the :pet hash by species/individual key value pairs and loops through them
          individual.each do |each_individual|  #iterates through each array of created animals within the :pets hash and makes their mood nervous for being sold
              each_individual.mood = "nervous"
          end
          individual.clear   #clears the indidual (animals) arrays within the :pets hash because the animals were sold
      end
  end

  def list_pets
      "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end





end
