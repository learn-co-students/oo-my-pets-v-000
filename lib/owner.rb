class Owner
  attr_accessor :pets, :name
  attr_reader :species
  @@all = []


  def self.all
    @@all
  end

  def self.count
    self.all.count
  end

  def self.reset_all
    self.all.clear
  end


  def species
    @species
  end

  def name
    @name
  end

  def initialize(pets)
    @species = "human"
    @name = nil

    @pets = { fishes: [], cats: [], dogs: [] }

    @@all << self
  end


  def buy_fish(name)
    bought_fish_object = Fish.new(name)
    self.pets[:fishes] << bought_fish_object
  end

  def buy_cat(name)
    bought_cat_object = Cat.new(name)
    self.pets[:cats] << bought_cat_object
  end

  def buy_dog(name)
    bought_dog_object = Dog.new(name)
    self.pets[:dogs] << bought_dog_object
  end


  def say_species
    "I am a #{self.species}."
  end


  def walk_dogs
    self.pets[:dogs].each { |doggie| doggie.mood = "happy" }
  end

  def play_with_cats
    self.pets[:cats].each { |kitty| kitty.mood = "happy" }
  end

  def feed_fish
    self.pets[:fishes].each { |fishie| fishie.mood = "happy" }
  end


  def sell_pets
    self.pets.each { |type, babies| babies.each { |each_baby| each_baby.mood = "nervous" } }
    self.pets.each { |type, babies| babies.clear }
  end

  def list_pets
    "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
  end

end
