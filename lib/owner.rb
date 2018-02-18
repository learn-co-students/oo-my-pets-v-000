require 'pry'

class Owner
  # code goes here
  attr_accessor :name, :pets, :dogs, :cats, :fishes
  attr_reader :species
  attr_writer :all

  @@all = []
  # @@owner_count = 0

  def self.all
    @@all
  end

  def self.count
    self.all.count
  end

  def self.reset_all
    self.all.clear
  end

  def initialize(species)
    @species = species
    @pets = {:dogs => [], :cats => [], :fishes => []}
    # @@owner_count += 1
    @@all << self
    # binding.pry
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(fish_name)
    self.pets[:fishes] << Fish.new(fish_name)
  end

  def buy_cat(cat_name)
    self.pets[:cats] << Cat.new(cat_name)
  end

  def buy_dog(dog_name)
    self.pets[:dogs] << Dog.new(dog_name)
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
      pets.each {|pet| pet.mood = "nervous"}
      pets.clear
    end
  end

  def list_pets
    "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
  end

end
