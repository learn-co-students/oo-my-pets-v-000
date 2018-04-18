class Owner
  
  require 'pry'
  
  attr_accessor :name, :pets, :mood
  attr_reader :species
  
  @@all = []
  
  def initialize(species)
    @name = name
    @@all << self
    @species = species
    @pets = {:fishes => [], :dogs => [], :cats => []}
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
    fish = Fish.new(name)
    @pets.collect do |k, v|
      if k == :fishes
        v << fish
      end
    end
  end
  
  def buy_cat(name)
    cat = Cat.new(name)
    @pets.collect do |k, v|
      if k == :cats
        v << cat
      end
    end    
  end
  
  def buy_dog(name)
    dog = Dog.new(name)
    @pets.collect do |k, v|
      if k == :dogs
        v << dog
      end
    end    
  end
  
  def walk_dogs
    buy_dog(name)
    dogs = @pets[:dogs]
    dogs.collect do |dog|
      dog.mood = "happy"
    end
  end
  
  def play_with_cats
    buy_cat(name)
    cats = @pets[:cats]
    cats.collect do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    buy_fish(name)
    fish = @pets[:fishes]
    fish.collect do |fish|
      fish.mood = "happy"
    end
  end
  
  def sell_pets
    @pets.each do |k, v|
      v.each do |pet|
        pet.mood = "nervous"
      end
    end
    @pets.clear
  end
  
  def list_pets
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end
  
end