class Owner
  attr_accessor :name, :pets
  attr_reader :species
  @@all = []

  def initialize(name)
    @name = name
    @pets = {fishes: [], cats: [], dogs: []}
    @species = 'human'
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all.clear
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
  end

  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
  end

  def list_pets
    "I have #{@pets[:fishes].size} fish, #{@pets[:dogs].size} dog(s), and #{@pets[:cats].size} cat(s)."
  end

  def sell_pets
    @pets.each { |k, v|
      @pets[k].each { |el|
        el.mood = "nervous"
        }
      }
      @pets.clear
  end

  def walk_dogs
    @pets[:dogs].map { |el| el.mood= "happy" }
  end

  def play_with_cats
    @pets[:cats].map { |el| el.mood= "happy" }
  end

  def feed_fish
    @pets[:fishes].map { |el| el.mood= "happy" }
  end


end
