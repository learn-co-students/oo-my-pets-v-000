require "pry"
class Owner
  @@all = []
  attr_reader :species
  attr_accessor :name, :pets

  def initialize(species, pets = {:fishes => [], :dogs => [], :cats => []})
    @species = species
    @pets = pets
    #binding.pry
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all.clear
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(name)
    self.pets[:fishes].push(Fish.new(name))
    self.pets[:fishes].each do |f|
      f.name
      end
  end

  def buy_cat(name)
    self.pets[:cats].push(Cat.new(name))
    self.pets[:cats].each do |c|
      c.name
      end
  end

  def buy_dog(name)
    self.pets[:dogs].push(Dog.new(name))
    self.pets[:dogs].each do |d|
      d.name
      end
  end

  def walk_dogs
    self.pets[:dogs].each do |d|
      d.mood = "happy"
    end
  end

  def play_with_cats
    self.pets[:cats].each do |c|
      c.mood = "happy"
    end
  end

  def feed_fish
    self.pets[:fishes].each do |f|
      f.mood = "happy"
    end
  end

  def sell_pets
    self.pets.each do |type, pets|
      pets.each do |p|
        p.mood = "nervous"
      end
      pets.clear
    end
    #binding.pry
  end

  def list_pets
    "I have #{pets[:fishes].length} fish, #{pets[:dogs].length} dog(s), and #{pets[:cats].length} cat(s)."
  end
end
