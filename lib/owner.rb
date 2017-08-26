class Owner
  
  @@all = []
  attr_reader :species
  attr_accessor :name, :pets
  def initialize(species="human")
  	@species = species
  	@@all << self
  	@pets = {
  		:fishes => [],
  		:dogs => [],
  		:cats =>[]
  		}
  end
  def say_species
  	return "I am a #{@species}."
  end
  def buy_fish(name)
  	new_fish = Fish.new(name)
  	@pets[:fishes] << new_fish
  end
  def buy_cat(name)
  	new_cat = Cat.new(name)
  	@pets[:cats] << new_cat
  end
  def buy_dog(name)
  	new_dog = Dog.new(name)
  	@pets[:dogs] << new_dog
  end
  def walk_dogs
  	@pets[:dogs].each { |x| x.mood= "happy"}
  end
  def play_with_cats
  	@pets[:cats].each { |x| x.mood= "happy"}
  end
  def feed_fish
  	@pets[:fishes].each { |x| x.mood= "happy"}
  end
  def sell_pets
  	@pets.values.flatten.each { |x| x.mood="nervous"}
  	@pets[:fishes].clear
  	@pets[:dogs].clear
  	@pets[:cats].clear
  end
  def list_pets
  	return "I have #{@pets[:fishes].size} fish, #{@pets[:dogs].size} dog(s), and #{@pets[:cats].size} cat(s)."
  end 
  def self.all
  	@@all
  end
  def self.count
  	@@all.length
  end
  def self.reset_all
  	@@all.clear
  end
end