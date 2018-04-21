require 'pry'

class Owner
  attr_accessor :owner, :name, :pets, :fish, :dog, :cat, :mood
  attr_reader :species

  @@all = []

  @@owner = 0

  def initialize(species)
    @owner = owner
    @species = species
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@all << self
    @@owner += 1
    @mood = mood
  end

  def self.count
    self.all.count
  end

  def self.reset_all
    @@all.clear
  end

  def self.all
    @@all
  end

  def say_species
     "I am a #{@species}."
  end

  def buy_fish(fish)
    fish = Fish.new(fish)
    @pets[:fishes] << fish
  end

  def buy_cat(cat)
    cat = Cat.new(cat)
    @pets[:cats] << cat
  end

  def buy_dog(dog)
    dog = Dog.new(dog)
    @pets[:dogs] << dog
  end

  def walk_dogs
    self.pets[:dogs].map do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    cat = Cat.new(cat)
    self.pets[:cats].map do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    fish = Fish.new(fish)
    self.pets[:fishes].map do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
  self.pets.each_pair do |key, val|
    self.pets[key].map do |x|
      x.mood = "nervous"
     end
    end
    self.pets.clear
  end

  def list_pets
    #binding.pry
    fish = self.pets[:fishes].count
    dog = self.pets[:dogs].count
    cats = self.pets[:cats].count
    "I have #{fish} fish, #{dog} dog(s), and #{cats} cat(s)."
  end
end
