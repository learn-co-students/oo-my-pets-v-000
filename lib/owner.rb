require 'pry'
class Owner
  # CLASS VARIABLES AND METHODS
  @@all = []  # Class Variable that keeps track of all instances of Owners

  def initialize(species)
    @species = species
    @@all << self
    @pets = {:fishes => [], :cats => [], :dogs=> []}
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all.clear
  end

  # INSTANCE VARIABLES AND METHODS
  attr_accessor :name, :pets
  attr_reader :species

  def say_species
    return "I am a #{@species}."
  end

  def buy_fish(name)
    new_fish = Fish.new(name)
    @pets[:fishes] << new_fish
  end

  def buy_cat(name)
    new_cat = Cat.new(name)
    @pets[:cats] << new_cat
  end

  def buy_dog(name)
    new_dog = Dog.new(name)
    @pets[:dogs] << new_dog
  end

  def walk_dogs
    self.pets[:dogs].each do |dog|
      dog.change_mood("happy")
    end
  end

  def play_with_cats
    self.pets[:cats].each do |cat|
      cat.change_mood("happy")
    end
  end

  def feed_fish
    self.pets[:fishes].each do |fish|
      fish.change_mood("happy")
    end
  end

  def sell_pets
    self.pets.each do |species, pets|
      pets.each do |pet|
        pet.change_mood("nervous")
      end
      pets.clear
    end
  end

  def list_pets
    fish_count = self.pets[:fishes].count
    dogs_count = self.pets[:dogs].count
    cats_count = self.pets[:cats].count
    str = "I have #{fish_count} fish, #{dogs_count} dog(s), and #{cats_count} cat(s)."
  end
end
