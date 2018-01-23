class Owner
  attr_accessor :name, :pets
  attr_reader :species

  @@owners = []


#keeps track of owners that have been created
  def self.all
    @@owners
  end

  #class method -  can count how many owners have been created
  def self.count
    @@owners.size
  end

  #class method - reset_all -> reset the owners that have been created - clear...
  def self.reset_all
    @@owners.clear
  end

  #initialize with a species, and species can't be changed.
  def initialize(species)
    @species = species
    @@owners << self
    @pets = {:fishes => [], :cats => [], :dogs=> []}
  end

  def say_species
    "I am a #{species}."
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
    pets.each do |species, pets|
      pets.each do |pet|
        pet.mood = "nervous"
      end
      pets.clear
    end
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end


end
