class Owner
  attr_accessor :name, :pets
  attr_reader :species
  @@all = []

  def initialize(species)
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.count
  end

  def say_species
    return "I am a #{@species}."
  end

  def pets
    @pets
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
    Dog.all.each {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    Cat.all.each {|cat| cat.mood = "happy"}
  end

  def feed_fish
    Fish.all.each {|fish| fish.mood = "happy"}
  end

  def sell_pets
    Dog.all.each {|dog| dog.mood = "nervous"}
    Cat.all.each {|cat| cat.mood = "nervous"}
    Fish.all.each {|fish| fish.mood = "nervous"}
    @pets.clear
  end

  def list_pets
    num_fish = @pets[:fishes].count
    num_dogs = @pets[:dogs].count
    num_cats = @pets[:cats].count
    return "I have #{num_fish} fish, #{num_dogs} dog(s), and #{num_cats} cat(s)."
  end
end
