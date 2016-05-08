require "pry"

class Owner
  attr_accessor :name, :pets
  attr_reader :species

  @@all_owners = []

  def initialize (species) 
  	@species = species
  	@@all_owners << self
  	@pets = {:fishes => [], :dogs => [], :cats => []}
  end
  
  def self.all
  	@@all_owners
  end

  def self.reset_all
  	@@all_owners = []
  end

  def self.count
  	@@all_owners.size
  end

  def say_species
  	"I am a #{@species}."
  end 

  def buy_fish(name)
  	new_fish = Fish.new(name)
  	self.pets[:fishes] << new_fish
  end

  def buy_cat(name)
  	new_cat = Cat.new(name)
  	self.pets[:cats] << new_cat
  end

  def buy_dog(name)
  	new_dog = Dog.new(name)
  	self.pets[:dogs] << new_dog
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
  	all_pets = self.pets.values
  	all_pets.each do |animals|
  		animals.each do |pet|
			pet.mood = "nervous"
		end
  	end
  	self.pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def list_pets 
  	"I have #{self.pets[:fishes].size} fish, #{self.pets[:dogs].size} dog(s), and #{self.pets[:cats].size} cat(s)."
  end 

end