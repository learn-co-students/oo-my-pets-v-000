require 'pry'

class Owner
  attr_accessor :owner, :pets, :mood
  attr_reader :name

  @@all = []
  @@count = 0

  def initialize(owner)
    @owner = owner
    @@all << self
    @@count += 1
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def self.all
    @@all
  end

  def self.reset_all
    self.all.clear
    @@count = 0
  end

  def self.count
    @@count
  end

  def species
    self.owner
  end

  def say_species
    "I am a #{owner}."
  end

  def name=(name)
    @name = name
  end

  def buy_fish(name)
    self.pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    self.pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    self.pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    self.pets[:dogs].map {|x| x.mood=("happy")}
  end

  def play_with_cats
    self.pets[:cats].map {|x| x.mood=("happy")}
  end

  def feed_fish
    self.pets[:fishes].map {|x| x.mood=("happy")}
  end

  def sell_pets # refactor this method
    self.pets[:dogs].map {|x| x.mood=("nervous")}
    self.pets[:fishes].map {|x| x.mood=("nervous")}
    self.pets[:cats].map {|x| x.mood=("nervous")}
    self.pets[:dogs].clear
    self.pets[:fishes].clear
    self.pets[:cats].clear
  end

  def list_pets # refactor this method
    a = self.pets[:fishes].count
    b = self.pets[:dogs].count
    c = self.pets[:cats].count
    "I have #{a} fish, #{b} dog(s), and #{c} cat(s)."
  end

end
