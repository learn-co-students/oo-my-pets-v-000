class Owner
  # code goes here
  attr_accessor :name, :pets
  attr_reader :species
  @@owners = []

  def initialize(species)
    @species = species
    @@owners << self
    @pets = {
      fishes: [],
      cats: [],
      dogs: []
    }
  end

  def say_species
    "I am a #{@species}."
  end

  def self.all
    @@owners
  end

  def self.reset_all
    self.all.clear
  end

  def self.count
    self.all.size
  end

  def buy_fish(fish)
    @pets[:fishes] << Fish.new(fish)
  end

  def buy_cat(cat)
    @pets[:cats] << Cat.new(cat)
  end

  def buy_dog(dog)
    @pets[:dogs] << Dog.new(dog)
  end

  def walk_dogs
    @pets[:dogs].each { |dog|  dog.mood = "happy" }
  end

  def play_with_cats
    @pets[:cats].each { |cat|  cat.mood = "happy" }
  end

  def feed_fish
    @pets[:fishes].each { |fish|  fish.mood = "happy" }
  end

  def sell_pets
    @pets.each { |pet, instances|
      instances.each{ |each| each.mood = "nervous"}
      instances.clear}
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end

end
