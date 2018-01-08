class Owner
  # code goes here
attr_accessor :name, :pets
attr_reader :species
  @@all = []

  def initialize(species)
    @species = species
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all.clear
  end

#Instance methods

  def species
    @species
  end

  def pets
    self.pets = {fishes: [], cats: [], dogs: []}
  end

#STILL BROKEN FROM HERE DOWN
  def say_species
    puts "I am a #{self.species}."
  end

  def buy_fish(name)
    fish = Fish.new(name)
    self.pets[:fishes] << fish
  end

  def buy_dog
  end

  def buy_cat
  end

  def walk_dogs
    self.pets[:dogs].mood = "happy"
  end

  def play_with_cats
  end

  def feed_fish
  end

  def sell_pets
  end

  def list_pets
    puts "I have #{self.pets.fish.count} fish, #{self.pets.dogs.count} dog(s), and #{self.pets.cats.count} cat(s)."
  end

end
