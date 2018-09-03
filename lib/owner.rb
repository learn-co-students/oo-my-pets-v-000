class Owner
  attr_accessor :pets, :name
  attr_reader :species
  @@owners = []

  def initialize(species)
    @pets = {fishes: [], cats: [], dogs: []}
    @species = species
    @@owners << self
  end

  def self.all
    @@owners
  end

  def self.count
    self.all.count
  end

  def self.reset_all
    self.all.clear
  end

  def buy_cat(name)
    new_pet = Cat.new(name)
    self.pets[:cats] << new_pet
  end

  def buy_dog(name)
    new_pet = Dog.new(name)
    self.pets[:dogs] << new_pet
  end

  def buy_fish(name)
    new_pet = Fish.new(name)
    self.pets[:fishes] << new_pet
  end

  def feed_fish
    self.pets[:fishes] = self.pets[:fishes].map {|fish| fish.mood = "happy"}
  end

  def list_pets
    "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
  end

  def play_with_cats
    self.pets[:cats] = self.pets[:cats].map {|cat| cat.mood = "happy"}
  end

  def say_species
    "I am a #{self.species}."
  end

  def sell_pets
    self.pets.each do |kind, pets|
      pets.each do |pet|
        pet.mood = "nervous"
      end
      pets.clear
    end
  end

  def walk_dogs
    self.pets[:dogs] = self.pets[:dogs].map {|dog| dog.mood = "happy"}
  end


end
