class Owner
  attr_accessor :name, :pets
  attr_reader :species
  @@owners = []

  def initialize(species)
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
    @@owners << self
  end

  def say_species
    "I am a #{species}."
  end

  def buy_fish(fish)
    new_pet = Fish.new(fish)
    self.pets[:fishes] << new_pet
  end

  def buy_cat(cat)
    new_pet = Cat.new(cat)
    self.pets[:cats] << new_pet
  end

  def buy_dog(dog)
    new_pet = Dog.new(dog)
    self.pets[:dogs] << new_pet
  end

  def walk_dogs
    self.pets[:dogs].each{|dog| dog.mood = "happy"}
  end

  def play_with_cats
    self.pets[:cats].each{|cat| cat.mood = "happy"}
  end

  def feed_fish
    self.pets[:fishes].each{|fish| fish.mood = "happy"}
  end

  def sell_pets
    self.pets.each do |type, pets|
      pets.each do |pet|
        pet.mood = "nervous"
      end
    end
    self.pets.clear
  end

  def list_pets
    "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
  end

  def self.all
    @@owners
  end

  def self.reset_all
    @@owners.clear
  end

  def self.count
    @@owners.size
  end

end
