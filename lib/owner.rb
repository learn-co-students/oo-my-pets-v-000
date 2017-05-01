require 'pry'

class Owner
	attr_accessor :name, :pets
	attr_reader :species
  @@all = []
  @@count = 0

  def initialize(name)
  	@name = name
  	@pets = {fishes: [], cats: [], dogs: []}
  	@species = name
  	self.save
  end

  def save
  	@@all << self
  	@@count += 1
  end
  
  def self.all
    @@all
  end

  def self.count
  	@@count
  end

  def self.reset_all
  	@@all.clear
  	@@count = 0
  end

  def species=(species)
  	raise AssociationTypeMismatchError, "#{species.class} received, Species expected." if !species.is_a?(Species)
  	@species = species
  end

  def say_species
  	"I am a #{@species}."
  end

  def pets
  	@pets
  end

  def buy_fish(fish)
  	self.pets[:fishes] << Fish.new(fish)
  end

  def buy_cat(cat)
  	self.pets[:cats] << Cat.new(cat)
  end

  def buy_dog(dog)
  	self.pets[:dogs] << Dog.new(dog)
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

  	self.pets.keys.map do |species|
  		self.pets[species].map {|pet| pet.mood = "nervous"}
   	end

    self.pets.keys.map { |p| self.pets[p].clear}
  end

  def list_pets
  	
  	"I have #{self.pets[:fishes].length} fish, #{self.pets[:dogs].length} dog(s), and #{self.pets[:cats].length} cat(s)."

  end
end