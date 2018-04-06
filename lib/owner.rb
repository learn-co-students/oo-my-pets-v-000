class Owner
  attr_accessor :pets, :name
  attr_reader :species
  @@owners = []
  @@owner_count = 0

  def initialize(species)
    @species = "human"
    @pets = {fishes: [], cats: [], dogs: []}
    @@owners << self
    @@owner_count = @@owner_count + 1
  end

  def say_species
    "I am a human."
  end

  def self.all
    @@owners
  end

  def self.count
    @@owner_count
  end

  def self.reset_all
    @@owner_count = 0
  end

  def buy_fish(name)
    new_fish = Fish.new(name)
    self.pets[:fishes] << new_fish
  end

  def buy_cat(name)
    new_cat = Cat.new(name)
    self.pets[:cats] << new_cat
  end

  def buy_dog(name)
    new_dog = Dog.new(name)
    self.pets[:dogs] << new_dog
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
    self.pets.each do |animal_type, pet|
      pet.each do |pet|
        pet.mood = "nervous"
      end
    end
    pets.clear
  end

  def list_pets
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end

end
