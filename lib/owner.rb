require 'pry'
class Owner
  
  attr_accessor :name, :pets
  attr_reader :species

  @@all = []

  def initialize(species)
    @species = species 
    @@all << self
    @pets = { :fishes => [], :dogs => [], :cats => [] }
  end

  def say_species
    "I am a #{self.species}."
  end 

  def self.all
    @@all
  end 

  def self.count
    @@all.count
  end 

  def self.reset_all 
    @@all.clear
  end 

  def buy_fish(fish)
    new_fish= Fish.new(fish)
    @pets[:fishes] << new_fish
  end 

  def buy_cat(cat)
    new_cat = Cat.new(cat)
    @pets[:cats] << new_cat
  end 

  def buy_dog(dog)
    new_dog = Dog.new(dog)
    @pets[:dogs] << new_dog
  end

  def walk_dogs
    @pets[:dogs].select {|dog| dog.mood ="happy"}
  end 

  def play_with_cats
    @pets[:cats].select {|cat| cat.mood = "happy"}
  end 

  def feed_fish
    @pets[:fishes].select {|fish| fish.mood = "happy"}
  end 

  def sell_pets
    @pets.select do |key, array|
      @pets[key].each {|item| item.mood = "nervous"}
      @pets[key].clear
    end 
  end

  def list_pets 
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end 


end

