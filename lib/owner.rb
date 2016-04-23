require "pry"

class Owner

  attr_reader :species
  attr_accessor :name, :pets

  @@count = 0
  @@all = []

  def self.all
    @@all
  end

  def self.count
    @@count
  end

  def self.reset_all
    @@all.clear
    @@count = 0
  end

  def initialize(species)
    @species = species
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@count += 1
    @@all << self
  end

  def say_species
    "I am a #{@species}."
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
    self.pets[:dogs].each {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    self.pets[:cats].each {|cat| cat.mood = "happy"}
  end

  def feed_fish
    self.pets[:fishes].each {|fish| fish.mood = "happy"}
  end

  def sell_pets
    self.pets[:dogs].each {|dog| dog.mood = "nervous"}
    self.pets[:cats].each {|cat| cat.mood = "nervous"}
    self.pets[:fishes].each {|fish| fish.mood = "nervous"}
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def list_pets
    fish_count = self.pets[:fishes].length
    dog_count = self.pets[:dogs].length
    cat_count = self.pets[:cats].length
    "I have #{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."
  end

end
