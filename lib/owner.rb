class Owner
  # code goes here
  @@all = []
  
  attr_accessor :name, :pets
  attr_reader :species
  
  def initialize(name, species="human")
    @name = name
    @species = species
    @@all << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end
  
  def self.all
    @@all
  end
  
  def self.reset_all
    @@all = []
  end
  
  def self.count
    @@all.length
  end
  
  def say_species
    "I am a #{self.species}."
  end
  
  def buy_fish(name)
    pets[:fishes] << Fish.new(name)
  end
  
  def buy_cat(name)
    pets[:cats] << Cat.new(name)
  end
  
  def buy_dog(name)
    pets[:dogs] << Dog.new(name)
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
    pets.each do |type, animals|
      animals.each do |animal|
        animal.mood = "nervous"
      end
      animals.clear
    end
  end
  
  def list_pets
    "I have #{pets[:fishes].length} fish, #{pets[:dogs].length} dog(s), and #{pets[:cats].length} cat(s)."
  end
  
  
  
end