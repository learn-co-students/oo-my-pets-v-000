class Owner
  attr_accessor :name, :pets
  attr_reader :species
  @@all = []


  def initialize(species)
    @species = species
    @@all << self
    @pets = {:cats=>[], :dogs=>[], :fishes=>[]}
  end

  def self.all
    @@all
  end

  def self.reset_all
    self.all.clear
  end

  def self.count
    self.all.count
  end

  def species
    @species
  end

  def say_species
    "I am a #{species}."
  end

  def name
    @name
  end

  def pets
    @pets
  end

  def buy_fish(name)
    pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    pets[:dogs].each do |d|
      d.mood = "happy"
    end
  end

  def play_with_cats
    pets[:cats].each do |c|
      c.mood = "happy"
    end
  end

  def feed_fish
    pets[:fishes].each do |f|
      f.mood = "happy"
    end
  end

  def sell_pets
    pets.each do |specie, animal|
      animal.each do |animal|
        animal.mood = "nervous"
      end
      animal.clear
    end
  end

  def list_pets
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end
end
