class Owner
  attr_accessor :pets, :name 
  attr_reader :species 

  @@all = [] 

#class methods
  def initialize(species)  
  	@species = species 
  	@pets = {fishes: [], cats: [], dogs: []} 
  	self.class.all << self
  end 

  def self.all 
  	@@all 
  end

  def self.count 
  	self.all.length 
  end

  def self.reset_all 
  	self.all.clear 
  end 

#instance methods 
  def say_species 
  	"I am a #{species}." 
  end 

  def buy_fish(name) 
  	new_fish = Fish.new(name) 
  	#add to pets hash (similar line for other buy methods)
  	pets[:fishes] << new_fish
  end 

  def buy_cat(name) 
  	new_cat = Cat.new(name) 
  	pets[:cats] << new_cat
  end 

  def buy_dog(name) 
  	new_dog = Dog.new(name) 
  	pets[:dogs] << new_dog
  end 

  def walk_dogs 
  	pets[:dogs].each { |dog| dog.mood="happy" } 
  end 

  def play_with_cats 
  	pets[:cats].each { |cat| cat.mood="happy" } 
  end 

  def feed_fish 
  	pets[:fishes].each { |fish| fish.mood="happy" } 
  end 

  def sell_pets 
  	pets[:dogs].each { |dog| dog.mood="nervous" } 
  	pets[:cats].each { |cat| cat.mood="nervous" }
  	pets[:fishes].each { |fish| fish.mood="nervous" }
  	pets.clear 
  end 

  def list_pets 
  	"I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end 

end