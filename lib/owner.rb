require 'pry'
class Owner

  @@all = []

  attr_accessor :name, :pets

  def initialize(owner)
    @owner = owner
    @@all << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def self.all
    @@all
  end

  def species
    @species = "human"
  end

  def say_species
    "I am a #{self.species}."
  end


  def buy_fish(fish_string)
    fish = Fish.new(fish_string)
    self.pets[:fishes] << fish
    self.pets
  end

  def buy_cat(cat_string)
    cat = Cat.new(cat_string)
    self.pets[:cats] << cat
    self.pets
  end

  def buy_dog(dog_string)
    dog = Dog.new(dog_string)
    self.pets[:dogs] << dog
    self.pets
  end

  def walk_dogs
    self.pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    self.pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    self.pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def list_pets
    fishes = self.pets[:fishes].count
    dogs = self.pets[:dogs].count
    cats = self.pets[:cats].count
    "I have #{fishes} fish, #{dogs} dog(s), and #{cats} cat(s)."
  end

  def sell_pets
    self.pets.each do |type, pets|
      pets.each do |pet|
        pet.mood = "nervous"
      end
    end
    self.pets.clear
  end

  def self.reset_all
    self.all.clear
  end

  def self.count
    self.all.count
  end
end