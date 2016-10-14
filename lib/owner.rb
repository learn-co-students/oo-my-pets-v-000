class Owner

  attr_reader :species
  attr_accessor :name, :pets

  @@owners = []

  def initialize(species)
    self.species = species
    @@owners << self
    self.pets = { :fishes => [], :dogs => [], :cats => [] }
  end

  def self.all
    @@owners
  end

  def self.count
    @@owners.length
  end

  def self.reset_all
    @@owners.clear
  end

  def say_species
    "I am a #{species}."
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
    self.pets[:dogs].each { |dog| dog.mood = "happy" }
  end

  def play_with_cats
    self.pets[:cats].each { |cat| cat.mood = "happy" }
  end

  def feed_fish
    self.pets[:fishes].each { |fish| fish.mood = "happy" }
  end

  def sell_pets
    self.pets[:dogs].each { |dog| dog.mood = "nervous" }
    self.pets[:cats].each { |cat| cat.mood = "nervous" }
    self.pets[:fishes].each { |fish| fish.mood = "nervous" }
    self.pets.clear
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end

  private

  def species=(species)
    @species = species
  end

end
