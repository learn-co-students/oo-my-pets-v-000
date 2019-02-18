require 'pry'
class Owner
  attr_accessor :pets, :count, :name
  attr_reader :species
  
  @@all = []
  
  def self.all
    @@all
  end

  def save
    @@all << self
  end
  
  
  def initialize(species= "human", name)
    @species = species
    @name = name
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
  end
  
  def say_species
    "I am a #{species}."
  end
  
  def self.count
    self.all.count
  end
  
  def self.reset_all
    @@all = []
  end
    
  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end
    
  def buy_cat(name)
   @pets[:cats] << Cat.new(name)
  end
  

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end
  
  def walk_dogs
    @pets[:dogs].collect {|dog| dog.mood= "happy"}
  end
  
  def play_with_cats
    @pets[:cats].collect {|cat| cat.mood= "happy"}
  end
  
  def feed_fish
    @pets[:fishes].collect {|fish| fish.mood= "happy"}
  end
    
  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."    
  end
  
  def sell_pets
    @pets.collect do |type, pets|
      @pets[type].collect {|pet| pet.mood= "nervous"}
    end
    @pets.clear
  end
  
end