class Owner
  attr_accessor :pets, :name
  attr_reader :species
  #@@all should include all owners 
  @@all = []

  # code goes here
  def initialize(name)
    #this should initialize a new owner by name 
    self.name = name 
    @species = "human"
    self.pets = {fishes: [], cats: [], dogs: []}
    @@all << self #@@all gets obj that's being initialized (a new owner)
    #in this initialize method we're initializing an owner and each owner starts with an empty
    #pet array which we have to modify through another method add_pet 
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
    "I am a #{@species}."
  end

  def pets
    @pets
  end

  def buy_fish(name)
    self.pets[:fishes] << Fish.new(name) 
  end

  def buy_cat(name)
    self.pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    self.pets[:dogs] <<Dog.new(name)
  end

  def walk_dogs
    self.pets[:dogs].each {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    self.pets[:cats].each {|cat| cat.mood = "happy" }
  end

  def feed_fish
    self.pets[:fishes].each {|fish| fish.mood = "happy"}
  end

  def sell_pets
    @pets.each do |key, value|
      value.each { |pet| pet.mood = "nervous"}
    end 
    self.pets.clear 
  end 

  def list_pets
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end 


end