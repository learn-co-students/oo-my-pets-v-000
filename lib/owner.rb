class Owner
  # code goes here
  attr_reader :species
  attr_accessor :pets, :name
  @@owners = []

  def initialize(pets, species = "human")
    @pets = {fishes: [], cats: [], dogs: []}
    @species = species
    @@owners << self
  end

  def self.reset_all
    @@owners.clear
  end

  def self.all
    @@owners
  end

  def self.count
    @@owners.count
  end

  def say_species
    return "I am a #{species}."
  end

  def self.name
    @name
  end

  def buy_fish(name)
    new_fish = Fish.new(name)
    self.pets[:fishes].push(new_fish)
  end

  def buy_cat(name)
    new_cat = Cat.new(name)
    self.pets[:cats].push(new_cat)
  end

  def buy_dog(name)
    new_dog = Dog.new(name)
    self.pets[:dogs].push(new_dog)
  end

  def walk_dogs
    self.pets[:dogs].each {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    self.pets[:cats].each {|cat| cat.mood = "happy"}
  end

  def feed_fish
    self.pets[:fishes].each {|fish| fish.mood = "happy"}
  end

  def sell_pets
    self.pets.each do |type, pets|
      pets.each do |pet|
        pet.mood = "nervous"
      end
    end

    self.pets[:dogs] = []
    self.pets[:fishes] = []
    self.pets[:cats] = []
  end

  def list_pets
    return "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
  end
end
