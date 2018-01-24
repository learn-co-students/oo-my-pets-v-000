class Owner
  attr_accessor :pets, :name
  attr_reader :species
  @@all = []
  @@count = 0

  def initialize(name)
    @name = name
    @pets = {fishes: [], cats: [], dogs: []}
    @species = "human"
    @@all << self
    @@count += 1
  end

  def self.all
    @@all
  end

  def self.count
    @@count
  end

  def self.reset_all
    @@all = []
    @@count = 0
  end

  def say_species
    "I am a #{@species}."
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
    @pets[:fishes].each do |fishes|
      fishes.mood = "happy"
    end
  end

  def sell_pets
    @pets[:dogs].each do |dog|
      dog.mood = "nervous"
    end

    @pets[:cats].each do |cat|
      cat.mood = "nervous"
    end

    @pets[:fishes].each do |fishes|
      fishes.mood = "nervous"
    end

    @pets = {}
  end

  def list_pets
    f = @pets[:fishes].size
    d = @pets[:dogs].size
    c = @pets[:cats].size

    "I have #{f} fish, #{d} dog(s), and #{c} cat(s)."
  end

end
