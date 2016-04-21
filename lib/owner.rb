class Owner
  
  @@owners = []
 
  attr_reader :species
  attr_accessor :name, :pets

  

  def initialize(name, species = "human")
  	@name = name
  	@species = species
  	@pets = {fishes: [], dogs: [], cats: []}
  	Owner.all << self
  end

  def self.all
  	@@owners
  end

  def self.reset_all
  	Owner.all.clear
  end

  def self.count
  	Owner.all.length
  end

  def say_species
  	"I am a #{self.species}."
  end

  def pets
  	@pets
  end

  def buy_fish(name)
  	fish = Fish.new(name)
  	self.pets[:fishes] << fish
  end

  def buy_cat(name)
  	cat = Cat.new(name)
  	self.pets[:cats] << cat
  end

  def buy_dog(name)
  	dog = Dog.new(name)
  	self.pets[:dogs] << dog
  end

  def walk_dogs
  	self.pets[:dogs].each {|dog| dog.mood = "happy"}
  end

  def play_with_cats
  	self.pets[:cats].each {|cat| cat.mood = "happy"}
  end

  def feed_fish
  	self.pets[:fishes].each {|fish| fish.mood = "happy"}
  end

  def sell_pets
  	self.pets.each do |category, pets|
  	  pets.each do |pet|
  	  	pet.mood = "nervous"
  	  end
  	  pets.clear
  	end
  end

  def list_pets
    "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
  end

end