require "pry"

class Owner
  attr_accessor :name, :pets
  attr_reader :species

  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @pets = { fishes: [], dogs: [], cats:[] }
    Owner.all << self
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all = []
  end

  def self.count
    @@all.size
  end

  def say_species
    "I am a #{species}."
  end

  def buy_fish(name)
    f = Fish.new(name)
    @pets[:fishes] << f
  end

  def buy_cat(name)
    c = Cat.new(name)
    @pets[:cats] << c
  end

  def buy_dog(name)
    d = Dog.new(name)
    @pets[:dogs] << d
  end

  def walk_dogs
    @pets[:dogs].each {|d| d.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].each {|c| c.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].each {|f| f.mood = "happy"}
  end

  def sell_pets
    @pets.each do |type, pets|
      pets.each {|pet| pet.mood = "nervous"}
    end
    self.pets.keys.each {|keys| @pets[keys] = []}
  end

  def list_pets
    "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
  end
end
