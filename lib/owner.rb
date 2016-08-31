require 'pry'

class Owner

  @@all = []
  attr_accessor :name, :pets
  attr_reader :species
  

  def initialize(species)
    @species = species
    @@all << self
    @pets = {fishes: [],
             dogs: [],
             cats: []
            }
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
    "I am a #{species}."
  end  

  def buy_fish(name)
  phish = Fish.new(name)  
  self.pets[:fishes] << phish
  @@all << self
  end

  def buy_cat(name)
    gurfield = Cat.new(name)
    self.pets[:cats] << gurfield
    @@all << self
  end
  
  def buy_dog(name)
    abby = Dog.new(name)
    self.pets[:dogs] << abby
    @@all << self
  end    

  def walk_dogs
    self.pets[:dogs].each{|dags| dags.mood = "happy"}
  end  

  def play_with_cats
    self.pets[:cats].each {|catz| catz.mood = "happy"}
  end  
    
  def feed_fish
    self.pets[:fishes].each {|phish| phish.mood = "happy"}
  end
  
  def sell_pets
    self.pets.each do |creatures, petz|
      petz.each do |pet_inst|
        pet_inst.mood = "nervous"
      end  
      petz.clear
    end
  end


  def list_pets
   "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end  

end  



