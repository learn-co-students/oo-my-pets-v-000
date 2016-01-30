require 'pry'

class Owner
  # code goes here

  @@all = [] #all owner instances

  attr_accessor :pets, :name, :mood
  attr_reader :species

  def initialize(pets,species="human")
    @pets = {fishes: [], cats: [], dogs: []}
    @species = species
    @@all << self
  end

  #def #buy (name)
    #add to @pets
      #use name to make new instance of the appropriate pet
       #initializing it with that name
      #associate that pet instance with the owner by adding it to the right array
  #
#end

  #def #sell
    #subtract from @pets
    #makes them allnervous
  #end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    self.all.count
  end


  def say_species
    "I am a #{self.species}."
  end

  def buy_fish(name)
    self.pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    self.pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    self.pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    self.pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    self.pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    self.pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def list_pets
    "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
  end


  def sell_pets
   
    pets.each do |species, pets|
      pets.each do |pet|
        pet.mood = "nervous"
      end
      pets.clear
    end
    
=begin
    self.pets[:fishes].each do |fish|
      fish.mood = "nervous"
    end

    self.pets[:cats].each do |cat|
      cat.mood = "nervous"
    end

    self.pets[:dogs].each do |dog|
      dog.mood = "nervous"
    end

    self.pets.clear

=end    
  
  end

end




