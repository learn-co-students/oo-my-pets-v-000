class Owner
  
  attr_accessor :name, :pets
  attr_reader :species, :say_species
  attr_writer 
  
  @@all = []


  def initialize(name)
    @pets = {fishes: [], cats: [], dogs: []}
    @name = name
    @species = "human"
    @@all << self
  end
  
  def self.count
    @@all.size
  end

  def self.reset_all
    @@all.clear
  end 
  
  def self.all
    @@all
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
    @pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end
  
  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end
  
  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end
  
  def sell_pets
  @pets.each do |keys, values|
    values.each do |value|
      value.mood = "nervous"
    end
    values.clear
  end 
  end 
  
  def list_pets
    number_of_dogs = @pets[:dogs].size
    number_of_cats = @pets[:cats].size 
    number_of_fish = @pets[:fishes].size 
    "I have #{number_of_fish} fish, #{number_of_dogs} dog(s), and #{number_of_cats} cat(s)."
  end 


  
end