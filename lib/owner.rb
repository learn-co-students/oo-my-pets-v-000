class Owner
  attr_accessor :name, :pets
  attr_reader :species

  @@all = []

  # Class Methods
  def self.all
    @@all
  end

  def self.reset_all
    @@all = []
  end

  def self.count
    @@all.size
  end

  def initialize(name)
    @name = name
    @species = "human"
    @pets = {fishes: [], dogs: [], cats: []}
    @@all << self
  end

  # Instance Methods
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
    self.pets[:dogs].each { |e| e.mood = "happy" }
  end

  def play_with_cats
    self.pets[:cats].each { |e| e.mood = "happy" }
  end

  def feed_fish
    self.pets[:fishes].each { |e| e.mood = "happy" }
  end

  def sell_pets
    self.pets.each {|type, pets| pets.each { |e| e.mood = "nervous" } }
    self.pets = {}
  end

  def list_pets
    "I have #{self.pets[:fishes].size} fish, #{self.pets[:dogs].size} dog(s), and #{self.pets[:cats].size} cat(s)."
  end
end
