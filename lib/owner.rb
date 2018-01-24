class Owner
  # code goes here
  @@all=[]
  @@count=0
  attr_accessor :pets, :name
  attr_reader :species

  def initialize(species)
  	@species = species
  	@pets = {fishes: [], cats: [], dogs: []}
  	@@count += 1
  	@@all << self
  end

  def self.count
  	@@count
  end

  def self.reset_all
  	@@count= 0 
  	@@all = []
  end

  def self.all
  	@@all
  end

  def say_species
  	"I am a #{@species}."
  end

  def buy_fish(name)
  	@pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
  	@pets[:cats] <<  Cat.new(name)
  end

  def buy_dog(name)
  	@pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
  	@pets[:dogs].each{|d| d.mood="happy"}
  end

  def play_with_cats
  	@pets[:cats].each{|c| c.mood="happy"}
  end

  def feed_fish
  	@pets[:fishes].each{|f| f.mood="happy"}
  end

  def sell_pets
  	@pets.each{|key,p| p.each{|sub| sub.mood="nervous"}}
  	@pets = {fishes: [], cats: [], dogs: []}
  end

  def list_pets
  	"I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end
end