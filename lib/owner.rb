require 'pry'

class Owner
  attr_accessor :pets, :name
  attr_reader :species
  @@all= []
  @@count =0

  def initialize(species)
    @species= species
    @name=name
    @pets ={fishes: [], cats: [], dogs: []}
    @@all << self
    @@count +=1
  end

  def say_species
     "I am a #{@species}."
  end

  def buy_fish(name)

    fish= Fish.new(name)
    @pets[:fishes] << fish
  end

  def buy_cat(name)
    cat= Cat.new(name)
    @pets[:cats] << cat
  end

  def buy_dog(name)
    dog= Dog.new(name)
    @pets[:dogs] << dog
  end



  def walk_dogs
    pets[:dogs].each do |dog|
        dog.mood = "happy"
     end
  end

  def play_with_cats
    pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    pets.each do |species, animals|
      animals.each do |animal|
        animal.mood = "nervous"
      end
      animals.clear
    end
  end

  def list_pets
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
    @@count = 0
  end

  def self.count
    @@count
  end


end