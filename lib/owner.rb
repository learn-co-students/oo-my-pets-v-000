require 'pry'

class Owner
  attr_accessor :name, :pets, :fish
  attr_reader :species

  @@all = []

  def initialize(species)
    @species = species
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    @@all.size
  end

  def self.reset_all
    @@all.clear
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(fish)
    @fish = Fish.new(fish)
    @pets[:fishes] << @fish
  end

  def buy_cat(cat)
    @cat = Cat.new(cat)
    @pets[:cats] << @cat
  end

  def buy_dog(dog)
    @dog = Dog.new(dog)
    @pets[:dogs] << @dog
  end

  def walk_dogs
    @pets[:dogs].map do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].map do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].map do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    @pets.each_key do |type|
      @pets[type].each {|pet| pet.mood = "nervous"}
      @pets[type].clear
    end
  end

  def list_pets
    "I have #{@pets[:fishes].size} fish, #{@pets[:dogs].size} dog(s), and #{@pets[:cats].size} cat(s)."
  end
end
