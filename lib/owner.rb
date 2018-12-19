class Owner
  attr_accessor :name, :pets
  attr_reader :species
  
  @@all= []
  
  def initialize(name, species="human")
    @name = name
    @@all << self
    @pets = {fishes:[], cats:[], dogs:[]}
    @species = species
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
  
  def sell_pets
    self.pets.each do |pet_type, pet|
      self.pets[pet_type].each do |pet|
        pet.mood = "nervous"
      end
    end
    self.pets.clear
  end
  
  def list_pets
    "I have #{self.pets[:fishes].size} fish, #{self.pets[:dogs].size} dog(s), and #{self.pets[:cats].size} cat(s)."
  end
end