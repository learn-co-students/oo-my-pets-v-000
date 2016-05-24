require "pry"
class Owner
  attr_accessor :name, :pets
  attr_reader :species 
  
  @@count = 0
  @@all = []

  def initialize(species)
    @species = species
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@all << self
    @@count += 1
  end

  def self.all
    @@all 
  end

  def self.reset_all
    @@count = 0
  end

  def self.count
    @@count
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(name)
    new_fish = Fish.new(name, mood = "nervous")
    pets[:fishes] << new_fish
    pets
  end

  def buy_cat(name)
    new_cat = Cat.new(name, mood = "nervous")
    pets[:cats] << new_cat
    pets
  end

  def buy_dog(name)
    new_dog = Dog.new(name, mood = "nervous")
    pets[:dogs] << new_dog
    pets
  end

  def walk_dogs
    pets[:dogs].each {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    pets[:cats].each {|cat| cat.mood = "happy"}
  end

  def feed_fish
    pets[:fishes].each {|fish| fish.mood = "happy"}
  end

  def sell_pets
    pets.each {|type, pets| 
      pets.each do |pet| pet.mood = "nervous"
      end}
    
    pets.replace({:fishes => [], :dogs => [], :cats => []})
  end

  def list_pets
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end

end