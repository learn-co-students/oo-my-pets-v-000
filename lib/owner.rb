class Owner
  attr_reader :species
  attr_accessor :name, :pets
  
  @@all = []
  @@count = 0
  
  def initialize(species)
  	@species = species
  	@@all << self
  	@@count += 1 
  	@pets = {fishes: [], cats: [], dogs: []}
  end

  
  def species(species)
    @species = species
  end
  
  def species
    @species
  end
  
  def name
    @name
  end
  
  def say_species
    "I am a #{@species}." 
  end
  
  def pets 
  	@pets
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@count
  end
  
  def self.reset_all
    @@count = 0 
    @@all.clear
  end
  
  def buy_fish(name)
    fish = Fish.new(name)
    @@all << fish
    self.pets[:fishes] << fish
  end
  
  def buy_cat(name)
    cat = Cat.new(name)
    @@all << cat
    self.pets[:cats] << cat
  end
  
  def buy_dog(name)
    dog = Dog.new(name)
    @@all << dog
    self.pets[:dogs] << dog
  end
  
  def walk_dogs
    pets[:dogs].each{ |dog| dog.mood = "happy"}
  end
  
  def play_with_cats
    pets[:cats].each{ |cat| cat.mood = "happy"}
  end
  
  def feed_fish
    pets[:fishes].each{ |fish| fish.mood = "happy"}
  end
  
  def sell_pets
    pets.each do |species, animals|
      animals.each do |animal|
      animal.mood = "nervous"
    end
      animals.clear
    end
  end
  
  def list_pets
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end
  
  
 

  
end