require 'pry'

class Owner
  # code goes here
  attr_reader :count, :species
  attr_accessor :name, :pets, :mood

  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @pets = {
      :fishes => [],
      :dogs => [],
      :cats => []
    }
    @@all << self
  end

  def self.all
    @@all
  end

  def self.reset_all
    self.all.clear
  end

  def self.count
    @@all.count
  end

  def say_species
    "I am a human."
  end

  def buy_fish(fish)
    new_fish = Fish.new(fish)
    self.pets[:fishes] << new_fish
  end

  def buy_cat(cat)
    new_cat = Cat.new(cat)
    self.pets[:cats] << new_cat
  end

  def buy_dog(dog)
    new_dog = Dog.new(dog)
    self.pets[:dogs] << new_dog
  end

  def walk_dogs
    # binding.pry
    @pets[:dogs].each {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].each {|cat| cat.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].each {|fish| fish.mood = "happy"}
  end

  def sell_pets
    @pets.each do |keys, animals|
      animals.each {|animal| animal.mood = "nervous"}
     animals.clear
    end
  end

  def list_pets
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end

end
