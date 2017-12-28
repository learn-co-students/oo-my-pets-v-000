require "pry"
class Owner
  attr_accessor :name, :pets
  attr_reader :species
  @@all = []

  def initialize(name)
    @name = name
    @species = 'human'
    @pets = { fishes: [], dogs: [], cats: [] }
    @@all << self
  end

  class << self
    def all
      @@all
    end

    def reset_all
      @@all.clear
    end

    def count
      @@all.count
    end
  end

  def say_species
    "I am a #{self.species}."
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
    @pets[:dogs].map { |dog| dog.mood = 'happy' }
  end

  def play_with_cats
    @pets[:cats].map { |cat| cat.mood = 'happy' }
  end

  def feed_fish
    @pets[:fishes].map { |fish| fish.mood = 'happy' }
  end

  def sell_pets
    @pets.each do |species, pets|
        pets.map { |pet| pet.mood = 'nervous' }
        pets.clear
    end
  end

  def list_pets
    "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
  end
end
