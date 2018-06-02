class Owner
  attr_accessor :name, :pets
  attr_reader :species
  @@all = []

  def initialize(name)
    @name = name
    @pets = {fishes: [], cats: [], dogs: []}
    self.class.all << self
    @species = "human"
  end

  def self.all
    @@all
  end

  def self.count
    self.all.count
  end

  def self.reset_all
    self.all.clear
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(fish)
    self.pets[:fishes] << Fish.new(fish)
  end

  def buy_cat(cat)
    self.pets[:cats] << Cat.new(cat)
  end

  def buy_dog(dog)
    self.pets[:dogs] << Dog.new(dog)
  end

  def walk_dogs
    self.pets[:dogs].each{ |dog| dog.mood = "happy"}
  end

  def play_with_cats
    self.pets[:cats].each{ |cat| cat.mood = "happy"}
  end

  def feed_fish
    self.pets[:fishes].each{ |fish| fish.mood = "happy"}
  end

  def sell_pets
    self.pets[:fishes].each{ |fish| fish.mood = "nervous"}
    self.pets[:cats].each{ |cat| cat.mood = "nervous"}
    self.pets[:dogs].each{ |dog| dog.mood = "nervous"}
    self.pets.clear
  end

  def list_pets
    "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
  end
end
