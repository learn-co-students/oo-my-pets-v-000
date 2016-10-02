require 'pry'

class Owner
  attr_accessor :name, :pets
  attr_reader :species # using reader method only, as it should not be able to change it's species at a later time
  @@all = []

  def initialize(species) #Initializes owner with a species, which can only be entered at time of initialization
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all.clear
  end

  def say_species
    "I am a #{self.species}."
  end

  def buy_fish(fish_name) # Purchases a new fish, by initializing it with a name, and adding it to @pets
    fish = Fish.new(fish_name)
    self.pets[:fishes] << fish
  end

  def buy_cat(cat_name) # Purchases a new cat, by initializing it with a name, and adding it to @pets
    cat = Cat.new(cat_name)
    self.pets[:cats] << cat
  end

  def buy_dog(dog_name) # Purchases a new dog, by initializing it with a name, and adding it to @pets
    dog = Dog.new(dog_name)
    self.pets[:dogs] << dog
  end

  def walk_dogs #Changes moods of all the dogs to happy
    self.pets[:dogs].each {|dog| dog.mood = "happy"}
  end

  def play_with_cats #Changes moods of all the cats to happy
    self.pets[:cats].each {|cat| cat.mood = "happy"}
  end

  def feed_fish #Changes moods of all the fishes to happy
    self.pets[:fishes].each {|fish| fish.mood = "happy"}
  end

  def sell_pets #Changes moods of all pets of all species to nervous and then clears the pet array
    self.pets.each do |species, pets|
      pets.each {|pet| pet.mood = "nervous"}
    end
    # Just a different way of saying the above method individually
    #self.pets[:dogs].each {|dog| dog.mood = "nervous"}
    #self.pets[:cats].each {|cat| cat.mood = "nervous"}
    #self.pets[:fishes].each {|fish| fish.mood = "nervous"}
    self.pets.clear
  end

  def list_pets #Lists all the pets
    "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
  end
end
