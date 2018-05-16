require 'pry'

class Owner
  attr_accessor :pets, :name, :mood
  attr_reader :species, :fishes, :cats, :dogs
  attr_writer 
  
  @@owner = []
  
  def initialize(name)
    @name = name
    @pets = {:fishes => [], :cats => [], :dogs => []}
    @@owner << self
    @species = "human"
  end
  
  def self.all 
    @@owner
  end
  
  def self.reset_all
    @@owner = []
  end
  
  def self.count
    @@owner.count
  end
  
  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
    @mood = "happy"
  end
  
  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
    @mood = "happy"
  end
  
  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
    @mood = "the most happy!"
  end
  
  def say_species
    return "I am a human."
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
    sad_pets = @pets.values.flatten
    @pets = {:fishes => [], :cats => [], :dogs => []}
    sad_pets.each do |pet|
      pet.mood = "nervous"
    end
    @mood = "sad"
  end
  
  def list_pets
    fish = @pets[:fishes].count
    dog = @pets[:dogs].count
    cat = @pets[:cats].count
    return "I have #{fish} fish, #{dog} dog(s), and #{cat} cat(s)."
  end
  
end