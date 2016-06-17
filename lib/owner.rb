require 'pry'
class Owner
  attr_accessor :pets
  attr_reader :species

@@all = []

  def initialize(species)
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self

  end

  def self.all
   @@all

  end

  def self.reset_all
    @@all = []

  end

  def self.count
    @@all.count
  end

  def species
    @species
  end

  def say_species
    return "I am a #{self.species}."
  end

  def name=(name)
    @name = name
  end

  def name
    @name.dup.freeze
  end

  def buy_fish(new_fish)
    add_fish = Fish.new(new_fish)

    @pets[:fishes] << add_fish

  end

  def buy_cat(new_cat)
    add_cat = Cat.new(new_cat)

    @pets[:cats] << add_cat

  end

  def buy_dog(new_dog)
    add_dog = Dog.new(new_dog)
    @pets[:dogs] << add_dog

  end
  def walk_dogs
    @pets[:dogs].each do |dog_mood|
      dog_mood.mood = "happy"
    end

  end

  def play_with_cats
    @pets[:cats].each do |cat_mood|
      cat_mood.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].each do |fish_mood|
      fish_mood.mood = "happy"

    end

  end

  def sell_pets
    @pets[:fishes].each{|change_mood| change_mood.mood = "nervous"}
    @pets[:dogs].each{|change_mood| change_mood.mood = "nervous"}
    @pets[:cats].each{|change_mood| change_mood.mood = "nervous"}
    @pets = {}

  end

  def list_pets
    fish = @pets[:fishes].count
    dogs = @pets[:dogs].count
    cats = @pets[:cats].count
    return "I have #{fish} fish, #{dogs} dog(s), and #{cats} cat(s)."
  end




end
