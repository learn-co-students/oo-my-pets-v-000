class Owner
  Owners = []
  attr_reader :species   # need reader because it shouldn't be able to change
  attr_accessor :name, :pets  # accessor because they are variable attr's

  def self.reset_all
    Owners.clear # empty out Owners array
  end

  def self.all
    Owners
  end

  def self.count
    Owners.size
  end

  def buy_fish(name)
    pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    pets[:dogs].each { |dog| dog.mood = "happy" }
  end

  def play_with_cats
    pets[:cats].each { |cat| cat.mood = "happy" }
  end

  def feed_fish
    pets[:fishes].each { |fish| fish.mood = "happy" }
  end

  def sell_pets
    pets.each { |type, name| name.each { |pet| pet.mood = "nervous" }}
    pets.clear
  end

  def list_pets
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end

  def initialize(species)
    @species = species
    Owners << self
    @pets = {:cats => [], :dogs => [], :fishes => []}
  end

  def say_species
    "I am a #{species}."
  end
end
