class Owner
  # code goes here
  attr_accessor :name, :pets
  attr_reader :species

  @@owners = []

  def initialize(pets = {fishes: [], cats: [], dogs: []}, species)
    @pets = pets
    @species = species
    @@owners  << self
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_cat(cat_name)
    @pets[:cats] << Cat.new(cat_name)
  end
  def buy_dog(dog_name)
      @pets[:dogs] << Dog.new(dog_name)
  end
  def buy_fish(fish_name)
      @pets[:fishes] << Fish.new(fish_name)
  end

  def walk_dogs
    @pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].each do |cat|
    cat.mood = "happy"
    end
  end

  def feed_fish
  @pets[:fishes].each do |fish|
    fish.mood = "happy"
    end
  end

  def sell_pets
    @pets.each do |breed, name|
      name.each do |pet|
      pet.mood = "nervous"
      end
    end
    @pets = []
  end

  def list_pets # length method used on arrays in ruby returns number of elements in the array for which method is invoked.
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end

  def self.all
    @@owners
  end

  def self.reset_all
    @@owners.clear
  end

  def self.count
    @@owners.length
  end

end
