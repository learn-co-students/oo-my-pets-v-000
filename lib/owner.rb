class Owner
  attr_accessor :pets, :name
  attr_reader :species
  @@all = []
  
  def initialize(species)
    @pets = {fishes: [], cats: [], dogs: []}
    @species = species
    save
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@all.size
  end
  
  def self.reset_all
    @@all = []
  end
  
  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end
  
  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end
  
  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end
  
  def play_with_cats
    @pets[:cats].each{|i| i.mood = "happy"}
  end
  
  def walk_dogs
    @pets[:dogs].each{|i| i.mood = "happy"}
  end
  
  def feed_fish
    @pets[:fishes].each{|i| i.mood = "happy"}
  end
  
  def sell_pets
    @pets.each{|k,v| v.each{|o| o.mood = "nervous"}}
    @pets = {}
  end
  
  def list_pets
    "I have #{@pets[:fishes].size} fish, #{@pets[:dogs].size} dog(s), and #{@pets[:cats].size} cat(s)."
  end
  
  def say_species
    "I am a #{@species}."
  end
  
  def save
    @@all << self
  end
  
end