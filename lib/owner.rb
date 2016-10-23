require 'pry'

class Owner
  attr_accessor :name, :pets
  attr_reader :species, :owner
  @@pet_owners = []

  def self.all
    @@pet_owners
  end

  def self.reset_all
    @@pet_owners.clear
  end

  def self.count
    owner_count = 0
    @@pet_owners.select { |owner| owner_count +=1 }
    owner_count
  end

  def initialize(owner)
    @owner = owner
    @species = "human"
    @@pet_owners << self
    @pets = {fishes: [], cats: [], dogs: []}
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(fish)
    name = Fish.new(fish)
    self.pets[:fishes] << name
  end

  def buy_cat(cat)
    name = Cat.new(cat)
    self.pets[:cats] << name
  end

  def buy_dog(dog)
    name = Dog.new(dog)
    self.pets[:dogs] << name
  end

  def walk_dogs
    self.pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    self.pets[:cats].select do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    self.pets[:fishes].collect do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    self.pets.select do |key, values|
      values.each do |pet|
        pet.mood = "nervous"
      end
    end
    @pets.clear
  end

  def list_pets
    fish_counter = 0
    cat_counter = 0
    dog_counter = 0
    self.pets[:fishes].each { |fish| fish_counter += 1 }
    fish_counter
    self.pets[:cats].each { |cat| cat_counter += 1 }
    cat_counter
    self.pets[:dogs].each { |dog| dog_counter += 1 }
    dog_counter
    "I have #{fish_counter} fish, #{dog_counter} dog(s), and #{cat_counter} cat(s)."
  end

end
