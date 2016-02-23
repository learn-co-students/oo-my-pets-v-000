class Owner

  @@owners = []

  ## OWNERS = [] ## << Could have used constant instead

  attr_accessor :pets, :name
  attr_reader :species

  def initialize(name, species = "human")
    @pets = {fishes: [], dogs: [], cats: []}
    @@owners << self
    @species = species
    @name = name
  end
#########  CLASS METHODS  #############

  def self.all
    @@owners
  end

  def self.count
    @@owners.size
  end

  def self.reset_all
    @@owners.clear
  end

#########  INSTANCE METHODS  #############

  def say_species
    return "I am a #{@species}."
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

  def walk_dogs
    @pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    @pets.each do |species, pets|
      pets.each do |pet|
        pet.mood = "nervous"
      end
    end
    @pets = {fishes: [], dogs: [], cats: []}
  end

  def list_pets
    return "I have #{@pets[:fishes].size} fish, #{@pets[:dogs].size} dog(s), and #{@pets[:cats].size} cat(s)."
  end

end


