class Owner
  @@all = []
  attr_accessor :name, :pets
  attr_reader :species
  
  def initialize(name)
    @name = name
    @@all << self
    @species = "human"
    @pets = {fishes: [], dogs: [], cats: []}
  end
  
  def self.all
    @@all
  end
  
  def self.reset_all
    @@all.clear
  end
  
  def self.count
    @@all.length 
  end
  
  def say_species
    "I am a human."
  end
  
  def buy_fish(name)
    pet = Fish.new(name)
    self.pets[:fishes] << pet
  end
  
  def buy_cat(name)
    pet = Cat.new(name)
    self.pets[:cats] << pet
  end
  
  def buy_dog(name)
    pet = Dog.new(name)
    self.pets[:dogs] << pet
  end
  
  def walk_dogs
    self.pets[:dogs].collect {|dog| dog.mood = "happy"}
  end
  
  def play_with_cats
    self.pets[:cats].collect {|cat| cat.mood = "happy"}
  end
  
  def feed_fish
    self.pets[:fishes].collect {|fish| fish.mood = "happy"}
  end
  
  def sell_pets
    self.pets.each do |type, pet|
      self.pets[type].each {|animal| animal.mood = "nervous"}
    end
    self.pets.clear
  end
  
  def list_pets
    "I have #{self.pets[:fishes].length} fish, #{self.pets[:dogs].length} dog(s), and #{self.pets[:cats].length} cat(s)."
  end
  
end