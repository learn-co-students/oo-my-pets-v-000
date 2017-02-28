class Owner
  # code goes here
  attr_accessor :pets, :name
  attr_reader :species
  @@owners = []


  def initialize(species)
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
    @name = name
    @@owners << self
  end

  def self.all
    @@owners
  end

  def self.reset_all
    @@owners.clear
  end

  def self.count
    @@owners.count
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(name)
    fish = Fish.new(name)
    self.pets[:fishes] << fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    self.pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    self.pets[:dogs] << dog
  end

  def walk_dogs
    pets[:dogs].each do |list_of_dogs|
      list_of_dogs.mood = "happy"
    end
  end

  def play_with_cats
    pets[:cats].each do |list_of_cats|
      list_of_cats.mood = "happy"
    end
  end

  def feed_fish
    pets[:fishes].each do |list_of_fish|
      list_of_fish.mood = "happy"
    end
  end

  def sell_pets
    pets.each do |key, array|
      array.each do |moods|
        moods.mood = "nervous"
      end
    end
    self.pets[:fishes].clear
    self.pets[:dogs].clear
    self.pets[:cats].clear
  end

  def list_pets
    "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
  end
end
