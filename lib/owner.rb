class Owner
  attr_accessor :name, :pets, :mood
  attr_reader :species
  @@all = []

  def initialize(species)
    @species = species
    @@all << self
    @pets = {
      fishes: [],
      dogs: [],
      cats: []
    }
  end

  def self.all
    @@all
  end

  def self.count
    self.all.count
  end

  def self.reset_all
    @@all = []
  end

  def say_species
    "I am a #{self.species}."
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
    dogs = self.pets[:dogs]
    dogs.each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    cats = self.pets[:cats]
    cats.each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    fishes = self.pets[:fishes]
    fishes.each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    self.pets.each do |species, animals|
      animals.each do |animal|
        animal.mood = "nervous"
      end
      animals.clear
    end
  end

  def list_pets
    "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
  end
end
