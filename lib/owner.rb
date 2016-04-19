class Owner
  attr_accessor :pets, :name, :mood
  attr_reader :species
  @@all = []

  def initialize(species)
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
    @species = "human"
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    self.all.clear
  end

  def self.species
    @species
  end

  def say_species
    "I am a #{self.species}."
  end

  def buy_cat(name)
    cat = Cat.new(name)
    self.pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    self.pets[:dogs] << dog
  end

  def buy_fish(name)
    fish = Fish.new(name)
    self.pets[:fishes] << fish
  end

  def walk_dogs
    self.pets[:dogs].each { |x| x.mood = "happy" }
  end

  def play_with_cats
    self.pets[:cats].each { |x| x.mood = "happy" }
  end

  def feed_fish
    self.pets[:fishes].each { |x| x.mood = "happy" }
  end

  def sell_pets
    self.pets.each{|k, v| self.pets[k].each { |x| x.mood = "nervous" }}
    @pets.clear
  end

  def list_pets
    "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
  end
end
