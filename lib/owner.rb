require 'pry'

class Owner
  
  attr_accessor :name, :pets
  
  @@all = []

  def self.all
    @@all
  end
  
  def initialize(name_of_owner)
    @name = name_of_owner
    @@all << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end
  
  def self.reset_all
    @@all.clear
  end
  
  def self.count
    @@all.count
  end
  
  def species
    self.name
  end
  
  def say_species
    "I am a " + species + "."
  end
  
  def buy_fish(name_of_fish)
    pets[:fishes] << Fish.new(name_of_fish)
  end
  
  def buy_cat(name_of_cat)
    pets[:cats] << Cat.new(name_of_cat)
  end
  
  def buy_dog(name_of_dog)
    pets[:dogs] << Dog.new(name_of_dog)
  end
  
  def walk_dogs
    pets[:dogs].map { |dog| dog.mood = "happy" }
  end
  
  def play_with_cats
    pets[:cats].map { |cat| cat.mood = "happy" }
  end
  
  def feed_fish
    pets[:fishes].map { |fish| fish.mood = "happy" }
  end
  
  def sell_pets
    pets.each do |pet_type, list_of_pets|
      list_of_pets.each do |single_pet|
        single_pet.mood = "nervous"
      end
    end
    pets.clear
  end
  
  def list_pets
    number_of_fish = pets[:fishes].count
    number_of_cats = pets[:cats].count
    number_of_dogs = pets[:dogs].count
    "I have #{number_of_fish} fish, #{number_of_dogs} dog(s), and #{number_of_cats} cat(s)."
  end
  
end