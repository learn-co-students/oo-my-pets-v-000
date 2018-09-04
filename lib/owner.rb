class Owner
  attr_reader :species
  attr_accessor :name, :pets
  @@count = 0
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
    @@count += 1
    @species = "human"
    @pets = {fishes: [], cats: [], dogs: []}
  end
  
  def self.count
    @@count
  end
  
  def self.all
    @@all
  end
  
  def mood
    
  def self.species
    @species
  end
  
  def say_species
    "I am a #{species}."
  end
  
  def buy_fish(name)
 
      
  end
  
  def buy_cat(name)
    
  end
  
  def buy_dog(name)
    
  end
  
  def walk_dogs
    Dog.mood = "happy"
  end
  
  def play_with_cats
    Cat.mood = "happy"
  end

  def feed_fish
    Fish.mood = "happy"
  end
  
  def list_pets
    
  end
  
  def sell_pets
    @pets = {fishes: [], cats: [], dogs: []}
  end
  
  def self.reset_all
    @@all = []
    @@count = 0
  end

  
end