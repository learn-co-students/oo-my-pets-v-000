class Owner
  attr_accessor :cat, :dog, :fish, :pets, :name
  attr_reader :species

  @@Owners = []

  def initialize(species)
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
    @@Owners << self
  end

  def self.all
    @@Owners
  end

  def self.reset_all
    @@Owners = []
  end

  def self.count
    @@Owners.count
  end

  def say_species
    "I am a #{species}."
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
    Dog.mood = "happy"
  end

end
