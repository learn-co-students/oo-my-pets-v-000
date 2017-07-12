class Owner
  attr_accessor :name, :pets
  attr_reader :species

  @@all = []

  def initialize(species)
    @name = name
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@all << self
    @species = species
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
    "I am a #{self.species}."
  end

  def buy_fish(name)
    self.pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    self.pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    self.pets[:dogs] << Dog.new(name)
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
      animals.each do |pet|
        pet.mood = "nervous"
      end
      animals.clear
    end
  end

  def list_pets
    fishes = pets[:fishes].count
    cats = pets[:cats].count
    dogs = pets[:dogs].count

    "I have #{fishes} fish, #{dogs} dog(s), and #{cats} cat(s)."
  end

end
