class Owner
  @@all = []
  attr_accessor :name, :pets
  attr_reader :species 
  
  def initialize(name)
    @name = name 
    @@all << self 
    @pets = {fishes: [], cats: [], dogs: []}
    @species = "human"
  end 
  
  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat 
  end 
  
  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog 
  end 
  
  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish 
  end 
  
  def say_species
    "I am a #{@species}."
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
    self.pets[:cats].each do |cat|
      cat.mood = "nervous"
    end 
    self.pets[:dogs].each do |dog|
      dog.mood = "nervous"
    end 
    self.pets[:fishes].each do |fish|
      fish.mood = "nervous"
    end 
    self.pets.clear 
  end 
  
  def list_pets 
    "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
  end 
  
  def self.all
    @@all 
  end 
  
  def self.reset_all 
    self.all.clear 
  end 
  
  def self.count
    self.all.count 
  end 
  
end