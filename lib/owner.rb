require "pry"
class Owner

  attr_accessor :name, :pets
  attr_reader :species

  @@all = []
  @@fish = 0

  def initialize(species)
    @@all << self
    @species = species
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def say_species
    "I am a #{@species}."
  end

  def pets
    @pets
  end

  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    dog = self.pets[:dogs]
    dog.each {|i| i.mood = "happy"}
  end

  def play_with_cats
    cat = self.pets[:cats]
    cat.each {|i| i.mood = "happy"}
  end

  def feed_fish
    fish = self.pets[:fishes]
    fish.each {|i| i.mood = "happy"}
  end

  def sell_pets
    self.pets.each do |pet, array|
      array.each do |i|
        i.mood = "nervous"
      end
    end
    self.pets.clear
  end

  def list_pets
    "I have #{self.pets[:fishes].length} fish, #{self.pets[:dogs].length} dog(s), and #{self.pets[:cats].length} cat(s)."
  end

end
