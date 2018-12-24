require 'pry'

class Owner

  attr_accessor :name, :pets
  attr_reader :species
  
  @@all = []
  
  def initialize(species)
    @species = species
    @@all << self
    @pets = {
      :fishes => [], 
      :dogs => [], 
      :cats => []
      
    }
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
  
  def say_species
    "I am a #{species}."
  end
  
  def buy_fish(fishName)
    newFish = Fish.new(fishName)
    @pets[:fishes] << newFish
  end

  def buy_cat(catName)
    newCat = Cat.new(catName)
    @pets[:cats] << newCat
  end

  def buy_dog(dogName)
    newDog = Dog.new(dogName)
    @pets[:dogs] << newDog
  end
  
  def change_mood(hash, emotion)
    @pets[hash].map { |animal| animal.mood = emotion }
  end
  
  def walk_dogs
    change_mood(:dogs, "happy")
  end
  
  def play_with_cats
    change_mood(:cats, "happy")
  end 
  
  def feed_fish
    change_mood(:fishes, "happy")
  end
  
  def sell_pets
    change_mood(:dogs, "nervous")
    change_mood(:fishes, "nervous")
    change_mood(:cats, "nervous")
    @pets = {}
    # binding.pry
  end
  
  def list_pets
    "I have #{@pets[:fishes].size} fish, #{@pets[:dogs].size} dog(s), and #{@pets[:cats].size} cat(s)."
  end
  
end