require 'pry'

class Owner
  # code goes here

  @@all = [  ]

  attr_accessor :name, :pets
  attr_reader :species, :species, :fishes, :dogs, :cats

  def initialize(species)
    @species = species
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@all << self #***
  end

  def self.all #*** Where you see ***, that is what I keep forgetting so a class can keep track of itself.  Take note! EG, I keep forgetting that it should be @@all instead of @all, and that this method for all is a class method -- so need def self.all!!
    @@all
  end

  def self.reset_all
    self.all.clear
  end

  def self.count #***
    self.all.count
  end

  def fishes
    @fishes = self.pets[:fishes]
  end

  def dogs
    @dogs = self.pets[:dogs]
  end

  def cats
    @cats = self.pets[:cats]
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(fish_name)
    f = Fish.new(fish_name)
    self.fishes << f
#    self.pets[:fishes] << f #changing this
  end

  def buy_cat(cat_name)
    c = Cat.new(cat_name)
    self.cats << c
  end

  def buy_dog(dog_name)
    f = Dog.new(dog_name)
    self.dogs << f
  end

  def walk_dogs
    self.dogs.each { |x| x.mood = "happy"}
  end

  def play_with_cats
    self.cats.each { |x| x.mood = "happy"}
  end

  def feed_fish
    self.fishes.each { |x| x.mood = "happy"}
  end

  def sell_pets
    self.pets.each do |k, v|
      #k[v].each { |p| p.mood = "nervous"} - This didn't work *** - take note!
      v.each { |p| p.mood = "nervous" }
      v.clear
    end
  end

  def list_pets
    "I have #{fishes.count} fish, #{dogs.count} dog(s), and #{cats.count} cat(s)."

  end

end
