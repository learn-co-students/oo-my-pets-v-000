require 'pry'

class Owner
  attr_accessor :cat, :dog, :fish, :pets, :name, :mood
  attr_reader :species

  @@Owners = []

  def initialize(species)
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
    @@Owners << self
  end

  def self.all
    @@Owners
  end

  def self.reset_all
    @@Owners = []
  end

  def self.count
    @@Owners.count
  end

  def say_species
    "I am a #{species}."
  end

  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
  end

  def walk_dogs
    @pets[:dogs].each {|o| o.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].each {|o| o.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].each {|o| o.mood = "happy"}
  end

  def sell_pets
    # binding.pry
      # @pets[:fishes].collect {|o| o.mood = "happy"}
      # @pets[:dogs].collect {|o| o.mood = "happy"}
      # @pets[:cats].collect {|o| o.mood = "happy"}
    @pets.each { |p, o| o.each {|pet| pet.mood = "nervous" } }
      @pets = {fishes: [], cats: [], dogs: []}
  end

  def list_pets
    fish_count = @pets[:fishes].count
    dog_count = @pets[:dogs].count
    cat_count = @pets[:cats].count
    "I have #{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."
  end

end
