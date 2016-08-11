require "pry"
class Owner

  attr_reader :species

  attr_accessor :name , :pets

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  @@all = []

  def initialize(species)
    @@all.push(self)
    @species = species
    @pets = {fishes: [], dogs: [], cats: []}

  end

  def self.count
    count = 0
    @@all.each { |owner| count +=1}
    count
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(fish)
    fish = Fish.new(fish)
    self.pets[:fishes] << fish
  end

  def buy_cat(name)
    name = Cat.new(name)
    self.pets[:cats].push(name)
  end

  def buy_dog(name)
    name = Dog.new(name)
    self.pets[:dogs].push(name)
  end

  def walk_dogs
    self.pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    self.pets[:cats].each {|cat| cat.mood = "happy"}
  end

  def feed_fish
    self.pets[:fishes].each { |fish| fish.mood = "happy"}
  end

  def sell_pets
    #binding.pry
    self.pets.map do |k, v|
      v.map do |obj|
        obj.mood = "nervous"
      end
    end
    pets.clear
  end

  def list_pets
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end





end
