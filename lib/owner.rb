class Owner
  # code goes here
  attr_accessor :name, :pets

  attr_reader :species

  @@owners = []

  def initialize(species)
    @name = name
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
    @@owners << self
  end

  def self.all
    @@owners
  end

  def self.count
    @@owners.count
  end

  def self.reset_all
    @@owners.clear
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
    self.pets[:dogs].each do |x|
      x.mood = "happy"
    end
  end
  def play_with_cats
    self.pets[:cats].each do |x|
      x.mood = "happy"
    end
  end
  def feed_fish
    self.pets[:fishes].each do |x|
      x.mood = "happy"
    end
  end
  def sell_pets
    pets.each do |key, value|
      value.each do |mood|
        mood.mood = "nervous"
      end
    end
    self.pets[:dogs].clear
    self.pets[:cats].clear
    self.pets[:fishes].clear
  end
  def list_pets
    "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
  end
end
