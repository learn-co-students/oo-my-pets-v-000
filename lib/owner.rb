require 'pry'
class Owner
  attr_accessor :name, :pets
  attr_reader :species

  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @pets = {:fishes => [], :dogs => [], :cats => []}
    save
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
    count
  end

  def self.count
    @@all.count
  end

  def save
    self.class.all << self
  end

  def say_species
    "I am a #{self.species}."
  end

  def buy_fish(name)
    fish = Fish.new(name)
    self.pets[:fishes] << fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    self.pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    self.pets[:dogs] << dog
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
    self.pets.values.flatten.each {|pet| pet.mood = "nervous"}
    self.pets[:fishes].clear
    self.pets[:dogs].clear
    self.pets[:cats].clear
  end

  def list_pets
    f_count = self.pets[:fishes].count
    d_count = self.pets[:dogs].count
    c_count = self.pets[:cats].count
    "I have #{f_count} fish, #{d_count} dog(s), and #{c_count} cat(s)."
  end
end
