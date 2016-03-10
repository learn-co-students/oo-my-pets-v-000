class Owner
  attr_accessor :pets, :name
  attr_reader :species
  @@all = []

  def initialize(species)
  	@species = species
  	@pets = {fishes: [], cats: [], dogs: []}
  	@@all << self
  	@name = name
  end

  def self.all
  	@@all
  end

  def self.count
  	@@all.size
  end

  def self.reset_all
  	@@all.clear
  end

  def say_species
  	"I am a #{self.species}."
  end

  def buy_fish(name)
  	pet = Fish.new(name)
  	self.pets[:fishes] << pet
  end

  def buy_cat(name)
  	pet = Cat.new(name)
  	self.pets[:cats] << pet
  end

  def buy_dog(name)
  	pet = Dog.new(name)
  	self.pets[:dogs] << pet
  end

  def walk_dogs
  	self.pets[:dogs].each {|dog| dog.mood = "happy"}
  end

  def play_with_cats
  	self.pets[:cats].each { |cat| cat.mood = "happy" }
  end

  def feed_fish
  	self.pets[:fishes].each { |fish| fish.mood = "happy"}
  end

  def sell_pets
  	self.pets.each do |type, pet_list|
  		pet_list.each { |pet| pet.mood = "nervous" }
  		self.pets[type] = []
  	end
  end

  def list_pets
  	counts = {}
  	self.pets.each { |type, pet_list| counts[type] = pet_list.size}
  	"I have #{counts[:fishes]} fish, #{counts[:dogs]} dog(s), and #{counts[:cats]} cat(s)."
  end
end