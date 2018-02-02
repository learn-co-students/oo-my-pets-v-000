require 'pry'

class Owner
  attr_accessor :name, :pets
  attr_reader :species
  
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @species = "human"
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def self.all
    @@all
  end
  
  def self.count
    @@all.length
  end
  
  def self.reset_all
    @@all = []
  end
  
  def say_species
    "I am a #{self.species}."
  end
  
  def buy_fish(name)
    item = Fish.new(name)
    @pets[:fishes] << item
  end
  
  def buy_cat(name)
    item = Cat.new(name)
    @pets[:cats] << item
  end
  
  def buy_dog(name)
    item = Dog.new(name)
    @pets[:dogs] << item
  end
  
  def walk_dogs
    @pets[:dogs].map!{|i| 
      i.mood = "happy"
    }
  end
  
  def play_with_cats
    @pets[:cats].map!{|i| 
      i.mood = "happy"
    }
  end
  
  def feed_fish
    @pets[:fishes].map!{|i| 
      i.mood = "happy"
    }
  end
  
  def sell_pets
    @pets.map{|k,v| 
      v.map{|i|
        i.mood = "nervous"
      }
    }
    @pets = {}
  end
  
  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end
end

