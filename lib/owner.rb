require 'pry'

class Owner

  @@all = []
  attr_accessor :name, :pets
  attr_reader :species

  def initialize(species)
    @species = species
    @@all << self
    @pets = {:fishes => [],:cats => [],:dogs => []}
  end

  def self.all
    @@all
  end

  def self.count
    self.all.count
  end

  def self.reset_all
    self.all.clear
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(fish)
    fish = Fish.new(fish)
    self.pets[:fishes] << fish
  end

  def buy_cat(cat)
    cat = Cat.new(cat)
    self.pets[:cats] << cat
  end

  def buy_dog(dog)
    dog = Dog.new(dog)
    self.pets[:dogs] << dog
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
    end
    self.pets.clear
  end

  def list_pets
    "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
  end

end
