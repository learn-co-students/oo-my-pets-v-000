class Owner
  # code goes here
  @@owners = []
  
  attr_accessor :pets, :name 
  attr_reader :species
  
  def initialize(species, pets = {fishes: [], cats: [], dogs: []})
    @species = species
    @pets = pets
    @@owners << self
  end
  
  def say_species
    "I am a #{@species}."
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
    @pets[:dogs].each do |m|
      m.mood = "happy"
    end
  end
  
  def play_with_cats
    @pets[:cats].each do |m|
      m.mood = "happy"
    end
  end
  
  def feed_fish
    @pets[:fishes].each do |m|
      m.mood = "happy"
    end
  end
    
  def self.count
    @@owners.length
  end
  
  def sell_pets
    @pets.each do |pet_kind, pet_names|
      pet_names.each do |name|
        name.mood = "nervous"
      end
    end
    @pets = {}
  end
  
  def list_pets
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end
  
  def self.all
    @@owners
  end
  
  def self.reset_all
    @@owners.clear
  end
  
end

