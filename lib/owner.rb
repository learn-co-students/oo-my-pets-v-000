require 'pry'

class Owner
  attr_accessor :name, :pets
  attr_reader :species

  @@all = []

  def initialize(name)
  	self.name = name
  	@species = "human"
  	@@all << self
  	@pets = {fishes: [], dogs: [], cats: []}
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
  	"I am a #{@species}."
  end

  def pets
  	@pets
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
  	@pets[:dogs].each {|i| i.mood = "happy"}
  end

  def play_with_cats
  	@pets[:cats].each {|i| i.mood = "happy"}
  end

  def feed_fish
  	@pets[:fishes].each {|i| i.mood = "happy"}
  end

  def sell_pets
  	@pets.each do |k, v|
  		v.each do |animal|
  			animal.mood = "nervous"
  		end
  	end
  	@pets.clear
  end

  def list_pets
  	"I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end




end