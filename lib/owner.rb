class Owner

  attr_accessor :pets, :name
  attr_reader :species

  @@all = []
  @@owner_count = 0

  def initialize(pets)
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
    @@owner_count += 1
    @species = species
    @name = name
  end

  def self.all
    @@all
  end

  def self.count
    @@owner_count
  end

  def self.reset_all
    @@all = []
    @@owner_count = 0
  end

  def species
    @species = "human"
  end

  def say_species
    return "I am a #{@species}."
  end

  def name
    @name = "Katie"
  end

  def buy_fish(name)
    name = Fish.new(name)
    @pets[:fishes] << name
  end

  def buy_cat(name)
    name = Cat.new(name)
    @pets[:cats] << name
  end

  def buy_dog(name)
    name = Dog.new(name)
    @pets[:dogs] << name
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
    @pets[:dogs].map do |dog|
      dog.mood = "nervous"
    end
    @pets[:cats].map do |cat|
      cat.mood = "nervous"
    end
    @pets[:fishes].map do |fish|
      fish.mood = "nervous"
    end
    @pets = {fishes: [], cats: [], dogs: []}
  end

  def list_pets
    return "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end

end
