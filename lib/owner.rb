class Owner
  attr_accessor :name, :pets
  attr_reader :species

  @@owners = []

  def initialize(species)
    @species = species
    @@owners << self
    @pets = {fishes: [], cats: [], dogs:[]}
  end

  def self.all
    @@owners
  end

  def self.reset_all
    @@owners = []
  end

  def self.count
    @@owners.count
  end

  def say_species
    "I am a #{species}."
  end

  def buy_fish(name)
    myfish = Fish.new(name)
    @pets[:fishes] << myfish
  end

  def buy_cat(name)
    mycat = Cat.new(name)
    @pets[:cats] << mycat
  end

  def buy_dog(name)
    mydog = Dog.new(name)
    @pets[:dogs] << mydog
  end

  def walk_dogs
    @pets[:dogs].each { |dog| dog.mood = "happy" }
  end

  def play_with_cats
    @pets[:cats].each { |cat| cat.mood = "happy" }
  end

  def feed_fish
    @pets[:fishes].each { |fish| fish.mood = "happy" }
  end

  def sell_pets
    @pets.each { |x, y| y.each { |pet| pet.mood = "nervous" } }
    @pets.each { |x, y| y.clear }
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end
end
