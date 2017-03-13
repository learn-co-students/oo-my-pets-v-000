class Owner
  attr_accessor :name, :pets
  attr_reader :species
  @@all = []

  def self.reset_all
    @@all = []
  end

  def self.all
    @@all
  end

  def self.count
    self.all.count
  end

  def initialize(species)
    @species = species
    self.pets = {fishes: [], dogs: [], cats: []}
    @@all << self
  end

  def say_species
    "I am a #{species}."
  end

  def buy_fish(name)
    # create an instance of the Fish class with the name "name"
    f = Fish.new(name)
    # add fish to pets hash
    self.pets[:fishes] << f
  end

  def buy_cat(name)
    c = Cat.new(name)
    self.pets[:cats] << c
  end

  def buy_dog(name)
    d = Dog.new(name)
    self.pets[:dogs] << d
  end

  def walk_dogs
    self.pets[:dogs].each { |dog| dog.mood = "happy"}
  end

  def play_with_cats
    self.pets[:cats].each { |cat| cat.mood = "happy"}
  end

  def feed_fish
    self.pets[:fishes].each { |fish| fish.mood = "happy"}
  end

  def sell_pets
    self.pets.each {|type, animal_array| animal_array.each {|pet| pet.mood = "nervous"}}
    self.pets = []
  end

  def list_pets
    "I have #{self.pets[:fishes].size} fish, #{self.pets[:dogs].size} dog(s), and #{self.pets[:cats].size} cat(s)."
  end

end
