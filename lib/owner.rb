require 'pry'
class Owner

  attr_reader :species #:name
  attr_accessor :pets, :name
  @@all = []
  @@count = 0

  def initialize(species)
    @pets = {fishes: [], dogs: [], cats: []}
    @species = species
    @@all << self
    @@count =+1
  end

  def self.all
    @@all
  end

  def self.count
    @@count
  end

  def self.reset_all
    @@all.clear
    @@count = 0
  end

  def species
    @species
  end

  def say_species
    "I am a #{species}."
  end

  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
  end

  def walk_dogs
    @pets[:dogs].each {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].each {|cat| cat.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].each {|fish| fish.mood = "happy"}
  end


  def sell_pets
    @pets.each do |species, animals|
      animals.each {|animal| animal.mood = "nervous"}
      animals.clear
    end
  end

  def list_pets
    start_string = "I have "
    @pets.each do |species, animals|
      if species.to_s == "fishes"
        species = "fish"
        start_string += "#{animals.count} #{species},"
      elsif species.to_s == "dogs"
        species = "dog(s)"
        start_string += " #{animals.count} #{species},"
      else 
        species = "cat(s)"
        start_string += " and #{animals.count} #{species}."
      end 
    end 
    start_string
  end 
end 

