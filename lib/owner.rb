class Owner
  # code goes here
  attr_accessor :pets, :name
  attr_reader :species
  @@all = []

  def initialize(species = "human")
  	@species = species
  	self.class.all << self
  	@pets = {fishes: [], cats: [], dogs: []}
  end

  def pets
  	@pets
  end


  def self.all
  	@@all
  end

  def self.count
  	self.all.count
  end


  def self.reset_all
  	self.all.clear
  end


  def say_species
  	"I am a #{@species}."
  end

  def buy_fish(name)
  	new_pet = Fish.new(name)
  	self.pets[:fishes] << new_pet
  end

  def buy_cat(name)
  	new_pet = Cat.new(name)
  	self.pets[:cats] << new_pet
  end

  def buy_dog(name)
  	new_pet = Dog.new(name)
  	self.pets[:dogs] << new_pet
  end

  def walk_dogs
  	self.pets[:dogs].each {|pet| pet.mood = "happy"}
  end

  def play_with_cats
  	self.pets[:cats].each {|pet| pet.mood = "happy"}
  end

  def feed_fish
  	self.pets[:fishes].each {|pet| pet.mood = "happy"}
  end

  def sell_pets

  	self.pets[:fishes].each {|pet| pet.mood = "nervous"}
  	self.pets[:fishes].clear
  	self.pets[:cats].each {|pet| pet.mood = "nervous"}
  	self.pets[:cats].clear	
  	self.pets[:dogs].each {|pet| pet.mood = "nervous"}
  	self.pets[:dogs].clear
  end

  def list_pets
  	num_fish = self.pets[:fishes].count
  	num_cats = self.pets[:cats].count
  	num_dogs = self.pets[:dogs].count
  	"I have #{num_fish} fish, #{num_dogs} dog(s), and #{num_cats} cat(s)."
  end

end