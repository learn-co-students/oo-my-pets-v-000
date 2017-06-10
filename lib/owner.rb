class Owner

  @@all = []

  attr_accessor :name, :pets
  attr_reader :species

  def initialize(species)
    @species = species
    @@all << self
    @pets = {fishes: [], dogs: [], cats: []}
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

  def species=(species)
    raise AssociationTypeMismatchError if species != self.species
    @species = species
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(name)
    self.pets[:fishes] << Fish.new(name, mood="nervous")
  end

  def buy_cat(name)
    self.pets[:cats] << Cat.new(name, mood="nervous")
  end

  def buy_dog(name)
    self.pets[:dogs] << Dog.new(name, mood="nervous")
  end

  def walk_dogs
    self.pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    self.pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    self.pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    self.pets.each do |type, animals|
      animals.each do |animal|
        animal.mood = "nervous"
      end
    end
    @pets = {fishes: [], dogs: [], cats: []}
  end

  def list_pets
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end

end
