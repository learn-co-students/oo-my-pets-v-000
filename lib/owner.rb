class Owner
  # code goes here
  attr_reader :species
  attr_accessor :name, :pets

  @@all = []

  def initialize(species)
  	@species = species
  	@@all << self
  	@pets = 
  	{fishes: [],
  	 dogs: [],
  	 cats: []
  	}
  end

  def self.all
  	@@all
  end

  def self.reset_all
  	@@all = @@all.clear
  end

  def self.count
  	@@all.size
  end

   def species=(species)
    raise "SpeciesImmutable"
  end

  def say_species
  	 "I am a #{self.species}."
  end

  def buy_fish(name)
  	fish = Fish.new(name)
  	self.pets[:fishes] << fish
  end

  def buy_dog(name)
  	dog = Dog.new(name)
  	self.pets[:dogs] << dog
  end

  def buy_cat(name)
  	cat = Cat.new(name)
  	self.pets[:cats] << cat
  end

  def walk_dogs
  	all_dogs = self.pets[:dogs]
  	all_dogs.each do |dog|
  		dog.mood = "happy"
  	end
  end

  def play_with_cats
  	all_cats = self.pets[:cats]
  	all_cats.each do |cat|
  		cat.mood = "happy"
  	end
  end

  def feed_fish
  	all_fishes = self.pets[:fishes]
  	all_fishes.each do |fish|
  		fish.mood = "happy"
  	end
  end

  def sell_pets
  	pet_hash = self.pets

  	pet_hash.each do |type, pets|
  		pets.each do |pet|
  			pet.mood = "nervous"
  		end
  	end

  	self.pets = {fishes: [],
  	 dogs: [],
  	 cats: []
  	}
  end

  def list_pets
  	cats = self.pets[:cats].size
  	dogs = self.pets[:dogs].size
  	fishes = self.pets[:fishes].size

  	"I have #{fishes} fish, #{dogs} dog(s), and #{cats} cat(s)."
  end

end