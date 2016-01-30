require "pry"

class Owner
  attr_accessor :name, :pets
  attr_reader :species

  @@all = []

  def initialize(name)
  	@name = name
  	@species = "human"
  	@pets = {:fishes=>[], :dogs=>[], :cats=>[]}
  	@@all << self
  end

  def buy_fish(name)
  	fish = Fish.new(name)
  	@pets[:fishes] << fish
  end

  def buy_dog(name)
  	dog = Dog.new(name)
  	@pets[:dogs] << dog
  end

  def buy_cat(name)
  	cat = Cat.new(name)
  	@pets[:cats] << cat
  end

  def walk_dogs
  	dogs_array = @pets[:dogs]
  	dogs_array.collect {|dog| dog.mood = "happy"}
  end

  def play_with_cats
  	cats_array = @pets[:cats]
  	cats_array.collect {|cat| cat.mood = "happy"}
  end

  def feed_fish
  	fish_array = @pets[:fishes]
  	fish_array.collect {|fish| fish.mood = "happy"}
  end

  def sell_pets
  	@pets.collect do |pet_type, list|
  		list.collect {|animal| animal.mood = "nervous"}
  		list.clear
  	end
  end

  def list_pets
  	"I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end

  def say_species
  	"I am a #{@species}."
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