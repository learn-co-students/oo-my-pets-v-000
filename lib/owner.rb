require "pry"
class Owner
  # code goes here
  attr_accessor :pets, :owner, :name
  attr_reader :species

  @@owners = []

  def initialize(species, pets = {:fishes => [], :dogs => [], :cats => []})
    @species = species
    @pets = pets
    @@owners << self
  end

  def self.all
    # binding.pry
    @@owners
  end

  def self.reset_all
    self.all.clear
  end

  def self.count
    Owner.all.count
  end

  def say_species
   "I am a #{@species}."
  end

  def name
    @name
  end

  def buy_fish(name)
    # binding.pry
    fish = Fish.new(name)
    # binding.pry
    @pets[:fishes] << fish
    # binding.pry
    @pets[:fishes]
  end

  def buy_cat(name)
    # binding.pry
    cat = Cat.new(name)
    # binding.pry
    @pets[:cats] << cat
    # binding.pry
    @pets[:cats]
  end

  def buy_dog(name)
    # binding.pry
    dog = Dog.new(name)
    # binding.pry
    @pets[:dogs] << dog
    # binding.pry
    @pets[:dogs]
  end

  def walk_dogs
    @pets[:dogs].map do |dog|
      dog.mood = "happy"
    end
    pets[:dogs]
  end

  def play_with_cats
    @pets[:cats].map do |cat|
      cat.mood = "happy"
    end
    pets[:cats]
  end

  def feed_fish
    @pets[:fishes].map do |fish|
      fish.mood = "happy"
    end
    @pets[:fishes]
  end

  def sell_pets
    @pets.each do |type, new_pets|
      new_pets.each do |pet|
        pet.mood = "nervous"
      end
    end
    @pets = {}
  end

  def list_pets
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end

end
