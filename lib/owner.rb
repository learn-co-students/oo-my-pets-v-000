require 'pry'

class Owner
  # code goes here
  attr_accessor :name, :pets
  attr_reader :species
  @@all = []

  def initialize(species)
    @species = species
    self.save
    @pets = {
      :fishes => [], :dogs => [], :cats => []
    }
  end

  def buy_fish(fish_name)
    fish = Fish.new(fish_name)
    self.pets[:fishes] << fish
  end

  def buy_cat(cat_name)
    cat = Cat.new(cat_name)
    self.pets[:cats] << cat
  end

  def buy_dog(dog_name)
    dog = Dog.new(dog_name)
    self.pets[:dogs] << dog
  end

  def say_species
    "I am a #{self.species}."
  end

  def save
      @@all << self
  end

  def self.all
    @@all
  end

  def self.reset_all
    self.all.clear
  end

  def self.count
    self.all.count
  end

  def walk_dogs
    self.pets[:dogs].collect {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    self.pets[:cats].collect {|cat| cat.mood = "happy"}
  end

  def feed_fish
    self.pets[:fishes].collect {|fish| fish.mood = "happy"}
  end

  def sell_pets
    self.pets.each do |species, animal_array|
      animal_array.collect {|animal| animal.mood = "nervous"}
    end
    self.pets.clear
  end

  def list_pets
    number_of_fish = self.pets[:fishes].count
    number_of_dogs = self.pets[:dogs].count
    number_of_cats = self.pets[:cats].count
    "I have #{number_of_fish} fish, #{number_of_dogs} dog(s), and #{number_of_cats} cat(s)."
  end



end
