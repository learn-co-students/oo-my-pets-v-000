
class Owner
  
  attr_accessor :name, :pets, :fishes, :dogs, :cats
  attr_reader :species

  @@all = []

  def initialize(name)
  	@name = name
  	@species = "human"
  	@pets = {:fishes=>[], :dogs=>[], :cats=>[]}
  	self.class.all << self
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
  	fish = Fish.new(name)
  	@pets.map do |pet, value|
  		if pet == :fishes
  			@pets[:fishes] << fish
  		end
  	end
  end

    def buy_cat(name)
  	cat = Cat.new(name)
  	@pets.map do |pet, value|
  		if pet == :cats
  			@pets[:cats] << cat
  		end
  	end
  end

    def buy_dog(name)
  	dog = Dog.new(name)
  	@pets.map do |pet, value|
  		if pet == :dogs
  			@pets[:dogs] << dog
  		end
  	end
  end

  def walk_dogs
  	@pets[:dogs].map do |dog|
  		dog.mood = "happy"
  	end
  end

  def play_with_cats
  	@pets[:cats].map do |cat|
  		cat.mood = "happy"
  	end
  end

  def feed_fish
  	@pets[:fishes].map do |fish|
  		fish.mood = "happy"
  	end
  end

  def sell_pets
  	@pets.each do |type, animals|
  		animals.each do |pet|
  		  pet.mood = "nervous"
  		end
  		animals.clear
  	end
  end
	
  def list_pets
  	num_dogs = @pets[:dogs].count	
  	num_fish = @pets[:fishes].count
  	num_cats = @pets[:cats].count
	"I have #{num_fish} fish, #{num_dogs} dog(s), and #{num_cats} cat(s)."
  end

end