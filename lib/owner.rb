class Owner
  attr_accessor :name, :pets
  attr_reader :species
  @@all = []
  
  
  def initialize(name)
    @name = name
    @@all << self
    @species = "human"
    @pets = {fishes: [], cats: [], dogs:[]}
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
    "I am a #{@species}."
  end
  
  def buy_fish(name)
    new_fish = Fish.new(name)
    @pets[:fishes] << new_fish
  end
  
   def buy_cat(name)
    new_cat = Cat.new(name)
    @pets[:cats] << new_cat
  end
  
   def buy_dog(name)
    new_dog = Dog.new(name)
    @pets[:dogs] << new_dog
  end
  
  def walk_dogs
    @pets[:dogs].collect{|a| a.mood = "happy"}
  end
  
   def play_with_cats
    @pets[:cats].collect{|a| a.mood = "happy"}
  end
  
   def feed_fish
    @pets[:fishes].collect{|a| a.mood = "happy"}
  end
  
  def sell_pets
    @pets.collect do |type, pet| 
      pet.collect{|a| a.mood = "nervous"}
      pet.clear
    end
  end
  
  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end 
  
end 