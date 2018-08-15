require 'pry'

class Owner 
  
  attr_accessor :pets, :name
  attr_reader :species
 
 @@all = []

  def initialize(species)
    @species = species
    @pets = {fishes: [ ], cats:[ ], dogs:[ ]}
    @@all << self
  end

  def self.owners
    @@all << self 
  end
  
  def species 
    @species
  end

  def say_species 
     return "I am a #{@species}."
  end

  def buy_fish(fish_name)
    @pets[:fishes] << Fish.new(fish_name)
  end
  
  def buy_cat(cat_name)
    @pets[:cats] << Cat.new(cat_name)
  end
  
  def buy_dog(dog_name)
    @pets[:dogs] << Dog.new(dog_name)
  end
  
  def walk_dogs 
    @pets.collect do |species,instances|
      if species == :dogs
        instances.each do |dog|
          dog.mood = "happy"
        end
      end
    end
  end
  
  def play_with_cats
    @pets.collect do |species,instances|
    if species == :cats
      instances.each do |cat|
        cat.mood = "happy"
      end
    end
  end
end

  def feed_fish 
    @pets.collect do |species, instances|
      if species == :fishes
        instances.each do |fish|
          fish.mood = "happy"
        end
      end
    end
  end

  def sell_pets 
    @pets.collect do |species, instances|
      instances.each do |pet|
      pet.mood = "nervous"
    end
    instances.clear
  end
end
  
  def list_pets 
    num_fish = @pets[:fishes].size
    num_dog = @pets[:dogs].size
    num_cat = @pets[:cats].size
    return "I have #{num_fish} fish, #{num_dog} dog(s), and #{num_cat} cat(s)."
  end
  
#Class Methods

  def self.all
  @@all<< self
  end
  
  def self.count
  @@all.size
  end
  
  def self.reset_all 
  @@all.clear
  end
end
