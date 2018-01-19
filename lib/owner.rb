class Owner
  # code goes here
  attr_accessor :pets, :name
  attr_reader :species

  @dogs = 0
  @cats = 0
  @fish = 0
  @@count = 0
  @@all = []

  def initialize(name)
    @name = name
    @pets = {fishes: [], dogs: [], cats: []}
    @species = "human"
    @@count += 1
    @@all << self
  end

# BUY/SELL PET METHODS
  def buy_cat(name)
    cat = Cat.new(name)
    self.pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    self.pets[:dogs] << dog
  end

  def buy_fish(name)
    fish = Fish.new(name)
    self.pets[:fishes] << fish
    # self.pets.first[1][0].name || fish.name
  end

  def list_pets
    count_pets = []
    @pets.each do |animal|
      count_pets << animal[1].length
    end
    "I have #{count_pets[0]} fish, #{count_pets[1]} dog(s), and #{count_pets[2]} cat(s)."
  end

  def sell_pets
    self.pets.each do |family, type|
      type.each do |individual|
          # self.pets.first[1][0].name
          individual.mood = "nervous"
      end
    end
    self.pets = {fishes: [], dogs: [], cats: []}
  end

# END BUY/SELL PET METHODS

# PET INTERACTION METHODS

def walk_dogs
  self.pets.each do |family, type|
    if family.to_s == "dogs"
      type.each do |individual|
        individual.mood = "happy"
      end
    end
  end
end

def play_with_cats
  self.pets.each do |family, type|
    if family.to_s == "cats"
      type.each do |individual|
        individual.mood = "happy"
      end
    end
  end
end

def feed_fish
  self.pets.each do |family, type|
    if family.to_s == "fishes"
      type.each do |individual|
        individual.mood = "happy"
      end
    end
  end
end

# HUMAN INTERACTION METHODS
  def say_species
    "I am a human."
  end

  def self.all
    @@all << self
    @@all
  end

  def self.reset_all
    self.all.clear
    @@count = 0
  end

  def self.count
    @@count
  end

# END HUMAN INTERACTION

end
