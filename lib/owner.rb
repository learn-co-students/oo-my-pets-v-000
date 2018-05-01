class Owner
  attr_accessor :pets, :name 
  attr_reader :species 
  
  @@all = []
  
  def initialize(species)
    @species = species 
    @pets = {:fishes => [], :cats => [], :dogs => []}
    @@all << self 
  end
  
  def self.all
    @@all 
  end
  
  def self.count
    self.all.count
  end
  
  def self.reset_all
    self.all.clear
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
      dog.mood = 'happy'
    end
  end
  
  def play_with_cats
    self.pets[:cats].each do |cat|
      cat.mood = 'happy'
    end
  end
  
  def feed_fish
    self.pets[:fishes].each do |fish|
      fish.mood = 'happy'
    end
  end
  
  def sell_pets
    self.pets.each do |species, pet|
      pet.each{|p| p.mood = 'nervous'}
      pet.clear
    end
  end
  
  def count_by_species(species) #must be symbol
    self.pets[species].count
  end
  
  def list_pets
    "I have #{count_by_species(:fishes)} fish, #{count_by_species(:dogs)} dog(s), and #{count_by_species(:cats)} cat(s)."
  end
    
end