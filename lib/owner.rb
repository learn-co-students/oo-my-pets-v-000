class Owner

  attr_accessor :pets, :name
  @species
  @@all = []

  def initialize(name)
    @pets = {fishes: [], cats: [], dogs: []}
    @species = name
    @@all << self
  end

  def species
    @species
  end

  def say_species
    return "I am a #{@species}."
  end

  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    @pets[:dogs].each {|d| d.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].each {|d| d.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].each {|d| d.mood = "happy"}
  end

  def sell_pets
    @pets[:cats].each {|d| d.mood = "nervous"}
    @pets[:fishes].each {|d| d.mood = "nervous"}
    @pets[:dogs].each {|d| d.mood = "nervous"}
    @pets = {fishes: [], cats: [], dogs: []}
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all = []
  end

  def self.count
    @@all.count
  end

end
