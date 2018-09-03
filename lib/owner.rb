class Owner
  attr_accessor :pets, :name 
  attr_reader :species 
  
  @@all = []
 
 def initialize(species)
   
   @species = species
   @pets = {fishes: [], cats:[], dogs: []}
   @@all << self
  end 
  
 def self.all 
    @@all 
  end 

 def self.count 
   @@all.length
 end 
 
 def self.reset_all
   @@all = []
 end 
 
 def say_species 
   "I am a #{species}." 
 end 

  def buy_cat(name)
    name = Cat.new(name)
    @pets[:cats] << name 
  end 
  
  def buy_fish(name)
    name = Fish.new(name)
    @pets[:fishes] << name 
  end 
  
  def buy_dog(name)
    name = Dog.new(name)
    @pets[:dogs] << name 
  end 
  
  def walk_dogs 
    @pets[:dogs].each do |walked| 
      walked.mood = "happy"
    end 
  end 
  
  def play_with_cats 
    @pets[:cats].each do |play|
      play.mood = "happy"
    end 
  end 
  
  def feed_fish 
    @pets[:fishes].each do |feed|
      feed.mood = "happy"
    end 
  end 
  
  def sell_pets 
    @pets[:cats].each do |sold|
      sold.mood = "nervous"
    end 
    
    @pets[:dogs].each do |sold|
      sold.mood = "nervous"
    end 
    
    @pets[:fishes].each do |sold|
      sold.mood = "nervous"
    end 
    
    @pets = {}
  end 
  
  def list_pets 
   
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end 
  
  
end 