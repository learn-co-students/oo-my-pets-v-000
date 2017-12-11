require 'pry'
class Owner
  # code goes here
attr_accessor :name, :pets
attr_reader :species
@@owner_count = 0 #keep count of owners created
@@owners = []     #keep track of owners created

  def initialize(name)   #initialize owner
    @@owners << self
    @@owner_count += 1
    @species = "human"
    @name = name
    @pets = {fishes: [], cats: [], dogs: []}
  end

  def self.reset_all        #reset owners
    @@owners.clear
    @@owner_count = 0
  end

  def self.count            #calls count of owners
    @@owner_count
  end

  def self.all              #calls all owners created
    @@owners
  end

  def say_species
    "I am a #{@species}."
  end


  def buy_fish(name)
    name = Fish.new(name)
    @name = name
    self.pets[:fishes] << name
    self.pets
  end

  def buy_cat(name)
    name = Cat.new(name)
    @name = name
    self.pets[:cats] << name
  end

  def buy_dog(name)
    name = Dog.new(name)
    @name = name
    self.pets[:dogs] << name

  end

  def walk_dogs
    self.pets[:dogs].each {|element|
      element.mood = "happy"
    }
    self.pets
  end

  def play_with_cats
    self.pets[:cats].each {|element|
      element.mood = "happy"
    }
    self.pets
  end

  def feed_fish
    self.pets[:fishes].each {|element|
      element.mood = "happy"
    }
    self.pets
  end

  def sell_pets
    self.pets.each {|type, pets|
      pets.each {|pet|
        pet.mood = "nervous"
      }
    }
    self.pets.clear
  end

  def list_pets
    "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."

  end

end
