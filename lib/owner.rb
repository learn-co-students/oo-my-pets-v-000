require'pry'
class Owner
  # code goes here
  attr_accessor :name, :pets
  attr_reader :species
  @@all = []
  
  def initialize(species)
    @species = species
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@all << self
  end 
    
  def self.all
    @@all 
  end 
  
  def self.count
    #binding.pry
    @@all.count
  end
  
  def self.reset_all
    @@all.clear
  end 
  
  def say_species
    "I am a human."
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
    #binding.pry
    @pets.collect do |key, value|
      value.collect do |instance|
       instance.mood = "happy"
      end
    end
    #@mood = "happy"
  end
  
  def play_with_cats
    @pets.collect do |key, value|
      value.collect do |instance|
       instance.mood = "happy"
      end
    end
  end
  
  def feed_fish
    @pets.collect do |key, value|
      value.collect do |instance|
       instance.mood = "happy"
      end
    end
  end
  
  def sell_pets
    @pets.collect do |key, value|
      value.collect do |instance|
       instance.mood = "nervous"
      end
    end
    @pets.clear
  end
  
  def list_pets
    #binding.pry
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end  
end