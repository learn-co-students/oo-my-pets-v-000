require 'pry'

class Owner
  attr_accessor :owner, :pets, :name, :mood
  attr_reader :species, :fish, :cat, :dog

  @@all = []
  @@count = 0


  def initialize(owner)
    @owner = owner
    @@count += 1
    @@all << self
    @pets = {fishes: [], cats: [], dogs: []}
  end

  def self.all
    @@all
  end

  def self.count
    @@count
  end

  def self.reset_all #count = 0
    @@all.clear
    @@count = 0
  end

# instance methods below
  def species #initializes with new species/can't change
   @species = self.owner
  end

  def say_species #can say its species
    "I am a #{species}."
  end

  def name
  @name
  end

  def buy_fish(fish)
    self.pets[:fishes] << Fish.new(fish)
    @@count += 1
  end

  def buy_cat(cat)
    self.pets[:cats] << Cat.new(cat)
    @@count += 1
  end

  def buy_dog(dog)
    self.pets[:dogs] << Dog.new(dog)
    @@count += 1
  end

  def walk_dogs
    dog = @pets[:dogs]
    @mood = mood
    dog.mood = "happy"
  end

  def play_with_cats

  end

  def feed_fish

  end

  def sell_pets

  end

  def list_pets

  end

end
