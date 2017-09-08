require 'pry'

class Owner

  attr_accessor :name, :pets
  attr_reader :species

  @@owners = []

  def initialize(owner)
    @owner   = owner
    @@owners << self
    @species = "human"
    @pets    = { fishes: [], dogs: [], cats: [] }
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
    "I am a #{self.species}."
  end

  def buy_fish(name)
    fish = Fish.new(name)
    pets[:fishes] << fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    pets[:dogs] << dog
  end

  def walk_dogs
    pets[:dogs].each {|d| d.mood = "happy"}
  end

  def play_with_cats
    pets[:cats].each {|c| c.mood = "happy"}
  end

  def feed_fish
    pets[:fishes].each {|f| f.mood = "happy"}
  end

  def sell_pets
    self.pets.each do |type, pets|
      pets.each do |pet|
        pet.mood = "nervous"
      end
      pets.clear
    end
  end

  def list_pets
    fish_count = 0
    dog_count  = 0
    cat_count  = 0
    self.pets.each do |key, pets_array|
      if key == :fishes
        fish_count = self.pets[key].length
      elsif key == :dogs
        dog_count = self.pets[key].length
      elsif key == :cats
        cat_count = self.pets[key].length
      end
    end
    "I have #{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."
  end

end
