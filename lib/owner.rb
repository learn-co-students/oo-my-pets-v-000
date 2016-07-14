# Owner Class
class Owner
  attr_accessor :name, :pets
  attr_reader :species

  @@all = []
  @@count = 0

  def initialize(species)
    @species = species
    @@all << self
    @@count += 1
    @pets = { fishes: [], dogs: [], cats: [] }
  end

  def self.all
    @@all
  end

  def self.reset_all
    self.all.clear
    @@count = 0
  end

  def self.count
    @@count
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
    @pets[:dogs].each { |dog| dog.mood = 'happy' }
  end

  def play_with_cats
    @pets[:cats].each { |cat| cat.mood = 'happy' }
  end

  def feed_fish
    @pets[:fishes].each { |fish| fish.mood = 'happy' }
  end

  def sell_pets
    @pets.each do |_type, pets|
      pets.count.times { pets.pop.mood = 'nervous' }
    end
  end

  def list_pets
    fishies = @pets[:fishes].size
    doggies = @pets[:dogs].size
    kitties = @pets[:cats].size

    "I have #{fishies} fish, #{doggies} dog(s), and #{kitties} cat(s)."
  end
end
