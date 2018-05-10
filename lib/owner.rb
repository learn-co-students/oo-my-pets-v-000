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

=begin
class Owner
  OWNERS = []
  attr_accessor :name, :pets
  attr_reader :species

  def self.reset_all
    OWNERS.clear
  end

  def self.all
    OWNERS
  end

  def self.count
    OWNERS.size
  end

  def initialize(species)
    @species = species
    OWNERS << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def buy_fish(name)
    pets[:fishes] << Fish.new(name)
  end

  def buy_dog(name)
    pets[:dogs] << Dog.new(name)
  end

  def buy_cat(name)
    pets[:cats] << Cat.new(name)
  end

  def walk_dogs
    pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    pets.each do |species, animals|
      animals.each do |animal|
        animal.mood = "nervous"
      end
      animals.clear
    end
  end

  def say_species
    "I am a #{species}."
  end

  def list_pets
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end

end
=end
