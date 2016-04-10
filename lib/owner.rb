class Owner
  
  attr_reader :species
  attr_accessor :name, :pets
  
  @@all = []
  
  def initialize(species)
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
    "I am a #{species}."
  end
  
  def buy_cat(name)
    newCat = Cat.new(name)
    self.pets[:cats] << newCat
  end
  
  def buy_dog(name)
    newDog = Dog.new(name)
    self.pets[:dogs] << newDog
  end
  
  def buy_fish(name)
    newFish = Fish.new(name)
    self.pets[:fishes] << newFish
  end
  
  def walk_dogs
    self.pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end
  
  def play_with_cats
    self.pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end
  
  def feed_fish
    self.pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end
  
  def sell_pets
    self.pets.each do |species, pets|
      pets.each do |pet|
        pet.mood = "nervous"
      end
    end
    
    pets.clear
  end
  
  def list_pets
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end
end