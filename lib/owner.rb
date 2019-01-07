class Owner
  attr_accessor :pets, :name
  attr_reader :species
  
  @@all = []
  
  def initialize(species)
    @species = species
    @@all << self
    @pets = {fishes: [], cats: [], dogs: []}
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@all.count
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
    pets[:dogs].map{|dog|dog.mood = "happy"}
  end
  
  def play_with_cats
    pets[:cats].map{|cat|cat.mood = "happy"}
  end
  
  def feed_fish
    pets[:fishes].map{|fish|fish.mood = "happy"}
  end
  
  def sell_pets
    pets.each{|pet|pet.mood = "nervous"}
  end
  
end