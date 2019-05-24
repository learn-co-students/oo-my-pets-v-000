require 'pry'

class Owner
  attr_accessor :owner, :pets, :name
  attr_reader :species

  @@all = []

  def initialize(owner)
    @owner = owner
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
    @species = "human"
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    all.clear
  end

  def species
    @species
  end

  def say_species
    "I am a #{species}."
  end

  def buy_fish(name)
    fish = Fish.new(name)
    pets[:fishes] << fish
    # pets[:fishes]
  end

  def buy_cat(name)
    cat = Cat.new(name)
    pets[:cats]<< cat
    # pets[:cats]
  end

  def buy_dog(name)
    dog = Dog.new(name)
    pets[:dogs] << dog
    # pets[:dogs]
  end

  def walk_dogs
    pets[:dogs][0].mood=("happy")
  end

  def play_with_cats
    pets[:cats][0].mood=("happy")
  end

  def feed_fish
    pets[:fishes][0].mood=("happy")
  end

  def sell_pets
    # pets.each { |key, value| binding.pry [key].mood=("nervous") }

    pets.each do |species, animals|
  # binding.pry
  animals.map { |o| o.mood=("nervous") }
  animals.clear
end
  end

end
