require 'pry'

class Owner
  attr_accessor :name, :pets, :cats, :dogs, :cats
  attr_reader :species

  @@Owners = []

  def initialize(name)
    @name = name
    @@Owners << self
    @species = "human"
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def self.all
    @@Owners
  end

  def self.reset_all
    @@Owners.clear
  end

  def self.count
    @@Owners.size
  end

  def species
    @species
  end

  def say_species
    "I am a #{self.species}."
  end

  def self.pets
    @pets
  end

  def buy_fish(new_fish)
    new_fish = Fish.new(new_fish)
    @pets[:fishes] << new_fish
  end

  def buy_cat(new_cat)
    new_cat = Cat.new(new_cat)
    @pets[:cats] << new_cat
  end

  def buy_dog(new_dog)
    new_dog = Dog.new(new_dog)
    @pets[:dogs] << new_dog
  end

  def walk_dogs
    self.pets[:dogs].each {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    self.pets[:cats].each {|cat| cat.mood = "happy"}
  end

  def feed_fish
    self.pets[:fishes].each {|fish| fish.mood = "happy"}
  end

  def sell_pets
    self.pets.each do |animal, pet|
      pet.each do |ind_pet|
        ind_pet.mood = "nervous"
      end
      pet.clear
    end
  end

  def list_pets
    "I have #{self.pets[:fishes].size} fish, #{self.pets[:dogs].size} dog(s), and #{self.pets[:cats].size} cat(s)."
  end
end
