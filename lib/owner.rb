require 'pry'

class Owner
attr_accessor :name, :pets
attr_reader :species
@@owners = []

  def initialize(name)
    @name = name
    @@owners << self
    @species = "human"
    @pets = {:fishes => [],:dogs => [], :cats => []}
  end

  def self.all
    @@owners
  end

  def self.reset_all
    @@owners = []
  end

  def self.count
    @@owners.length
  end

  def species
    @species
  end

  def say_species
    "I am a #{species}."
  end

  def pets
    @pets
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
    pets[:dogs].each do |dogs|
      dogs.mood = "happy"
    end
  end

  def play_with_cats
    pets[:cats].each do |cats|
      cats.mood = "happy"
    end
  end

  def feed_fish
    pets[:fishes].each do |fishes|
      fishes.mood = "happy"
    end
  end


  def sell_pets
    pets.each do |type, pet|
      pet.each do |pet|
        pet.mood = "nervous"
      end
    end
    @pets = {:fishes => [],:dogs => [], :cats => []}
  end

  def list_pets
    number_of_fish = pets[:fishes].length
    number_of_cats = pets[:cats].length
    number_of_dogs = pets[:dogs].length
    "I have #{number_of_fish} fish, #{number_of_dogs} dog(s), and #{number_of_cats} cat(s)."
  end

end
