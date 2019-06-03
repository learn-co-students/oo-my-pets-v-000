class Owner

@@all = []

  attr_accessor :pets, :name
  attr_reader :name, :species, :say_species, :all
  attr_writer 
  
  def initialize(name)
    @name = name 
    @pets = {fishes: [], cats: [], dogs: []}
    @species = "human"
    @@all << self 
  end 

  def self.count 
    @@all.size
  end 
  
  def name 
    @name 
  end 
  
  def self.all 
    @@all 
  end 
  
  def self.reset_all
    @@all = []
  end 
  
  def say_species
   "I am a human." 
  end 
  
  def buy_fish(name)
    fishie = Fish.new(name)
    @pets[:fishes] << fishie
  end 
  
  def buy_cat(name)
  cattie = Cat.new(name)
  @pets[:cats] << cattie 
  end 
  
  def buy_dog(name)
  doggie = Dog.new(name)
  @pets[:dogs] << doggie 
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
  
  def list_pets
  
  "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end 
  
  def sell_pets
@pets[:dogs].each do |dog|
  dog.mood = "nervous"
end 

@pets[:cats].each do |cat|
  cat.mood = "nervous"
end

@pets[:fishes].each do |fish|
  fish.mood = "nervous"
end 
  
   @pets.each do |pet_class, pet|
       pet.clear
   end 
 
 end 
        
end 