class Owner
	attr_accessor :name, :pets
	attr_reader :species

	@@all = []

  def initialize(species)
  	@species = species
  	@pets = {:fishes => [], :dogs => [], :cats => []}
  	@@all << self
  end

  def self.all
  	@@all
  end

  def self.reset_all
  	@@all = []
  end

  def self.count
  	@@all.count 
  end

  def say_species
  	return "I am a #{self.species}."
  end

  def buy_fish(name)
  	fish = Fish.new(name)
  	@pets[:fishes] << fish
  end

  def buy_cat(name)
  	cat = Cat.new(name)
  	@pets[:cats] << cat
  end

  def buy_dog(name)
  	dog = Dog.new(name)
  	@pets[:dogs] << dog
  end

  def walk_dogs
  	self.pets[:dogs].each do |i|
  	i.mood = "happy"
  end
  end

  def play_with_cats
  	self.pets[:cats].each do |i|
  	i.mood = "happy"
  end
  end

  def feed_fish
  	self.pets[:fishes].each do |i|
  	i.mood = "happy"
  end
  end

  def sell_pets
  	self.pets.values.each do |i|
  		i.each do |j|
  			j.mood = "nervous"
  		end
  	end
  	@pets = {}
  end

  def list_pets
  	return "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
  end

end