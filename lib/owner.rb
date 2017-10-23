class Owner
  attr_reader :species
  attr_accessor :pets, :name
  @@all = []

  def initialize(species)
    @species = species
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    self.all.count
  end

  def self.reset_all
    self.all.clear
  end

  def say_species
    "I am a #{self.species}."
  end

  def pets
    @pets
  end

  def buy_fish(name)
    pets[:fishes] << Fish.new(name)
    pets
  end

  def buy_dog(name)
    pets[:dogs] << Dog.new(name)
    pets
  end

  def buy_cat(name)
    pets[:cats] << Cat.new(name)
    pets
  end

  def walk_dogs
    pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
    pets
  end

  def play_with_cats
    pets[:cats].each do |cat|
      cat.mood = "happy"
    end
    pets
  end

  def feed_fish
    pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
    pets
  end

  def sell_pets
    pets.each do |type, pet|
      pet.each do |value|
        value.mood = "nervous"
      end
    end
    pets.each do |type, pet|
      pet.delete_if do |value|
        value.mood == "nervous"
      end
    end
    pets
  end

  def list_pets
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end
end
