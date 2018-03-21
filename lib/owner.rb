class Owner
  attr_reader :species
  attr_accessor :name, :pets
  @@all = []

  def initialize(species)
    @species = species
    @pets = {fishes: [], dogs: [], cats: []}
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
    "I am a #{species}."
  end

  def buy_fish(pet_name)
    new_fish = Fish.new(pet_name)
    self.pets[:fishes] << new_fish
  end

  def buy_cat(pet_name)
    new_cat = Cat.new(pet_name)
    self.pets[:cats] << new_cat
  end

  def buy_dog(pet_name)
    new_dog = Dog.new(pet_name)
    self.pets[:dogs] << new_dog
  end

  def walk_dogs
    self.pets[:dogs].each {|p| p.mood = "happy"}
  end

  def play_with_cats
    self.pets[:cats].each {|p| p.mood = "happy"}
  end

  def feed_fish
    self.pets[:fishes].each {|p| p.mood = "happy"}
  end

  def sell_pets
    self.pets.each do |type, pet|
      pet.each do |p|
        p.mood = "nervous"
      end
    end
    @pets = {fishes: [], dogs: [], cats: []}
  end

  def list_pets
    "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
  end

end
