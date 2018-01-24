require 'pry'
class Owner
  attr_accessor :name, :pets
  attr_reader :init
  @@all = []
  def initialize(init)
    @init = init
    @@all << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end
  def self.all
    @@all
  end
  def self.reset_all
    self.all.clear
  end
  def self.count
    self.all.length
  end

  def species
    self.init
  end

  def say_species
    "I am a #{self.species}."
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
    self.pets.each do |species,pets|
      pets.each {|pet| pet.mood = "nervous"}
      pets.clear
    end
  end

  def list_pets
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end

end
