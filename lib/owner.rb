require 'active_support/inflector'

class Owner
  attr_accessor :name, :pets
  attr_reader :species
  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @pets = {fish: [], dogs: [], cats: []}
    @@all << self
  end

  def say_species
    "I am a #{@species}."
  end

  def walk_dogs
    @pets[:dogs].each { |dog| dog.mood = "happy" }
  end

  def play_with_cats
    @pets[:cats].each { |cat| cat.mood = "happy" }
  end

  def feed_fish
    @pets[:fish].each { |fish| fish.mood = "happy" }
  end

  def sell_pets
    @pets.each do |k,v|
      v.each { |pet| pet.mood = "nervous" } 
    end
    @pets.clear
  end

  def list_pets
    "I have #{@pets[:fish].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end

  def method_missing(m, *args)
    # Dynamically buy fish, dogs and cats
    method = m.to_s
    if method.start_with? "buy_"
      pet = method[4..-1]
      if @pets.keys.to_s.include? pet.pluralize
        buy_pets(pet, args)
      else
        raise NoMethodError, "Can't buy #{pet.pluralize}!"
      end
    else
      super
    end  
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

  private
  def buy_pets(pet,args)
    new_pet = Object.const_get(pet.capitalize).send(:new, args[0])
    @pets[pet.pluralize.to_sym] << new_pet
    new_pet
  end
end