require 'pry'
class Owner

  @@all = []

  attr_accessor :pets, :name

  attr_reader :species

  def initialize(species)
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all.clear
  end

  def say_species
    message = "I am a #{species}."
    message
  end

  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
  end

  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
  end

  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
  end

  def walk_dogs
    @pets.each do |species, animal_array|
      animal_array.each do |animal|
        animal.mood = "happy"
      end
    end
  end

  def play_with_cats
    @pets.each do |species, animal_array|
      animal_array.each do |animal|
        animal.mood = "happy"
      end
    end
  end

  def feed_fish
    @pets.each do |species, animal_array|
      animal_array.each do |animal|
        animal.mood = "happy"
      end
    end
  end

  def sell_pets
    @pets.each do |species, animal_array|
      animal_array.each do |animal|
        animal.mood = "nervous"
      end
    end
    @pets.clear
  end

  def list_pets
    my_fish = []
    my_cats = []
    my_dogs = []
    @pets.each do |species, animal_array|
      animal_array.each do |animal|
        if animal.class == Fish
          my_fish << animal
        elsif animal.class == Cat
          my_cats << animal
        elsif animal.class == Dog
          my_dogs << animal
        end
      end
    end
    message = "I have #{my_fish.length} fish, #{my_dogs.length} dog(s), and #{my_cats.length} cat(s)."
    message
  end
end
