class Owner
  # code goes here

  attr_accessor :name, :pets, :species
  @@all = []

  def initialize(name)
    @name = name
    @pets = {cats: [], dogs: [], fishes: []}
    @species = "human"
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

  def name
    @name
  end

  def pest
    @pets
  end

  def species=(species)
    raise "Error: You can't change spices"
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(pet_name)
      fish = Fish.new(pet_name)
      @pets[:fishes] << fish
  end

  def buy_dog(pet_name)
      dog = Dog.new(pet_name)
      @pets[:dogs] << dog
  end

  def buy_cat(pet_name)
      cat = Cat.new(pet_name)
      @pets[:cats] << cat
  end

  def walk_dogs
    @pets[:dogs].each { |a| a.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].each { |a| a.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].each { |a| a.mood = "happy"}
  end

  def sell_pets
    @pets[:fishes].each { |a| a.mood = "nervous"}
    @pets[:dogs].each { |a| a.mood = "nervous"}
    @pets[:cats].each { |a| a.mood = "nervous"}
    @pets.clear
  end

  def list_pets
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end

end
