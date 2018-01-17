class Owner
  # code goes here
  OWNERS = []
  attr_accessor :name, :pets
  attr_reader :species

  def self.reset_all
    OWNERS.clear
  end

  def self.all
    OWNERS
  end

  def self.count
    OWNERS.size
  end


  def initialize(species)
    @species = species
    @pets = {
      fishes: [],
      dogs: [],
      cats: []
    }

    OWNERS << self
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
      dog.mood = "happy"
    end
  end

  def play_with_cats
    self.pets[:cats].collect {|cat| cat.mood = "happy"}
  end

  def feed_fish
    self.pets[:fishes].collect {|fish| fish.mood = "happy"}
  end

  def sell_pets
    pets.collect do |species, pets|
      pets.collect { |pet| pet.mood = "nervous"}
    end
    pets.clear
  end

  def list_pets
    "I have #{pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
  end

# don't havwe to use self.


end
