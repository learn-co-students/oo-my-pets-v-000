class Owner
  # CLASS METHODS
  attr_accessor :name, :pets
  attr_reader :species
  @@all = []

  # initialize owner, add to owner collective
  def initialize(species)
    @@all << self
    @species = species
    @pets = { cats: [], dogs: [], fishes: [] }
  end

  # track created owners
  def self.all
    @@all
  end

  # count how many owners
  def self.count
    @@all.length
  end

  # reset created owners
  def self.reset_all
    @@all = []
  end

  # INSTANCE METHODS
  def say_species
    "I am a #{self.species}."
  end

  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end

  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end

  def walk_dogs
    @pets[:dogs].map { |dog| dog.mood = "happy" }
  end

  def play_with_cats
    @pets[:cats].map { |cat| cat.mood = "happy" }
  end

  def feed_fish
    @pets[:fishes].map { |fish| fish.mood = "happy" }
  end

  def sell_pets
    @pets.each do |type, pets|
      pets.map { |pet| pet.mood = "nervous" }
    end
    @pets = { cats: [], dogs: [], fishes: [] }
  end

  def count_pets(pet)
    @pets[pet].length
  end

  def list_pets
    "I have #{count_pets(:fishes)} fish, #{count_pets(:dogs)} dog(s), and #{count_pets(:cats)} cat(s)."
  end

end
