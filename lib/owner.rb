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
  def species
   @species = self.owner
  end

  def say_species
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
    @pets[:dogs].collect {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].collect {|cat| cat.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].collect {|fish| fish.mood = "happy"}
  end

  def sell_pets
    pets.each do |type, pets|
    pets.collect{|pet| pet.mood = "nervous"}
   end
   pets.clear
  end

  def list_pets
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end
end
