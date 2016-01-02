require 'pry'
require_relative '../config/environment'
class Owner
  # code goes here
  @@all = []
  attr_accessor :name, :pets
  def initialize(species)
  	@species = species
  	@@all << self
  end

  def self.all
  	@@all
  end

  def self.reset_all
  	@@all.clear
  end

  def self.count
  	@@all.count
  end

  def species
  	@species
  end

  def say_species
  	"I am a #{@species}."
  end

  def pets
  	@pets_hash ||= {:fishes=>[], :dogs=>[], :cats=>[]}
  end

  def buy_fish(fish_string)
  	fish = Fish.new(fish_string)
  	pets[:fishes] << fish
  	@pets_hash
  end

  def buy_cat(cat_string)
  	cat = Cat.new(cat_string)
  	pets[:cats] << cat
  	@pets_hash
  end

  def buy_dog(dog_string)
  	dog = Dog.new(dog_string)
  	pets[:dogs] << dog
  	@pets_hash
  end

  def walk_dogs
  	pets[:dogs].map do |f|
  		f.mood = "happy"
  	end
  end

  def play_with_cats
  	pets[:cats].map do |f|
  		f.mood = "happy"
  	end
  end

  def feed_fish
  	pets[:fishes].map do |f|
  		f.mood = "happy"
  	end
  end

  def sell_pets
 	@pets[:dogs].map do |f|
  		f.mood = "nervous"
  	end
  	@pets[:cats].map do |f|
  		f.mood = "nervous"
  	end
  	@pets[:fishes].map do |f|
  		f.mood = "nervous"
  	end
  end

  def list_pets
  	"I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end


end