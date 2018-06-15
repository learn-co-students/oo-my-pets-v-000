class Owner
  attr_accessor :pets, :name
  attr_reader :species
  @@all = []
  
  def initialize(species)
    @name = ""
    @species = "human"
    @pets = {fishes: [], dogs: [], cats: []}
    @@all << self
  end
  
  def self.all
    @@all 
  end 
  
  def self.count
    @@all.length
  end 
  
  def self.reset_all
    @@all.clear
  end
  
  def say_species
    "I am a #{@species}."
  end
  
  def buy_fish(fish_name)
    new_fish = Fish.new(fish_name)
    @pets[:fishes] << new_fish 
    new_fish
  end 
    
  def buy_dog(dog_name)
    new_dog = Dog.new(dog_name)
    @pets[:dogs] << new_dog  
    new_dog
  end 
  
  def buy_cat(cat_name)
    new_cat = Cat.new(cat_name)
    @pets[:cats] << new_cat  
    new_cat
  end 
  
  def feed_fish
    @pets[:fishes].each {|fish| fish.mood = "happy"}
  end
  
  def play_with_cats
    @pets[:cats].each {|cat| cat.mood = "happy"}
  end
  
  def walk_dogs
    @pets[:dogs].each {|dog| dog.mood = "happy"}
  end
  
  def sell_pets
    
    @pets[:fishes].each {|fish| fish.mood = "nervous"}
    @pets[:cats].each {|cat| cat.mood = "nervous"}
    @pets[:dogs].each {|dog| dog.mood = "nervous"}
    
    @pets[:fishes].clear
    @pets[:cats].clear
    @pets[:dogs].clear
  end
  
  def list_pets
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end
end

