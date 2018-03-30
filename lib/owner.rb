require "pry"

class Owner

  attr_accessor :name, :pets, :fishes, :cats, :dogs, :mood
  attr_reader :species

  @@all = []

  def self.all
    @@all
  end

  def self.count
    # self.all = 0
    self.all.count
  end

  def self.reset_all
    self.all.clear
  end

  def initialize(species)
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}

    @@all << self
  end

  def say_species
    # binding.pry
    "I am a #{@species}."
  end

  def buy_fish(name)
    self.pets[:fishes] << fish = Fish.new(name)
    # binding.pry
    self.pets[:fishes]
  end

  def buy_cat(name)
    self.pets[:cats] << cat = Cat.new(name)
    self.pets[:cats]
  end

  def buy_dog(name)
    self.pets[:dogs] << dog = Dog.new(name)
    self.pets[:dogs]
  end

  def walk_dogs
    # binding.pry
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
    # binding.pry
    self.pets.each do |type, pet|
        pet.each do |p|
          p.mood = "nervous"
        end
        pet.clear
          # binding.pry
      end
    end

    def list_pets
      "I have #{pets[:fishes].length} fish, #{pets[:dogs].length} dog(s), and #{pets[:cats].length} cat(s)."

    end
end
