class Owner
  attr_reader :species
  attr_accessor :name, :pets

  @@all = []

  def initialize(species)
    @species = species
    @pets = {fishes: [], dogs: [], cats: []}
    @@all << self
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.count
  end

  def say_species
    "I am a #{species}."
  end

  def buy_fish(name)
    newFish = Fish.new(name)
    self.pets[:fishes] << newFish
  end


  def buy_cat(name)
    newCat = Cat.new(name)
    self.pets[:cats] << newCat
  end

  def buy_dog(name)
    newDog = Dog.new(name)
    self.pets[:dogs] << newDog
  end

  def walk_dogs
    self.pets[:dogs].each { |d| d.mood = "happy" }
  end

  def play_with_cats
    self.pets[:cats].each { |c| c.mood = "happy" }
  end

  def feed_fish
    self.pets[:fishes].each { |f| f.mood = "happy" }
  end

  def sell_pets
    self.pets.each { |species, pets|
    pets.each { |pet| pet.mood = "nervous" }
      }
      pets.clear
  end

  def list_pets
     "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end

end