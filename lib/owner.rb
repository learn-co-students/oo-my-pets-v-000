class Owner
  @@all = []
  attr_accessor :name, :pets
  attr_reader :species
  
  # Class Variables #
  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
    @pets = {fishes: [], cats: [], dogs: []}
  end
  
  def self.all
    @@all
  end
  
  def self.count
    self.all.length
  end
  
  def self.reset_all
    @@all = []
  end
  
  #Instance Variables#
  def say_species
    "I am a #{self.species}."
  end
  
  def buy_fish(name)
    fish = Fish.new(name)
    pets[:fishes] << fish
  end
  
  def buy_cat(name)
    cat = Cat.new(name)
    pets[:cats] << cat
  end
  
  def buy_dog(name)
    dog = Dog.new(name)
    pets[:dogs] << dog
  end
  
  def walk_dogs
    pets[:dogs].each{|dog| dog.mood=("happy")}
  end
  
  def play_with_cats
    pets[:cats].each{|cat| cat.mood=("happy")}
  end
  
  def feed_fish
    pets[:fishes].each{|fish| fish.mood=("happy")}
  end
  
  def sell_pets
    pets.each do |kind, animals|
      animals.each do |animal|
        animal.mood=("nervous")
      end
      animals.clear
    end
  end
  
  def list_pets
    "I have #{pets[:fishes].size} fish, #{pets[:dogs].size} dog(s), and #{pets[:cats].size} cat(s)."
  end
end