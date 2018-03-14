class Owner
  attr_accessor :pets, :name
  attr_reader :species

  @@all = []

  #Class Methods

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.size
  end

  #Instance Methods

  def initialize(species)
    @species = species
    @@all << self
    @pets = {fishes: [], cats: [], dogs: []}
  end

  def say_species
    "I am a #{species}."
  end

  #Pets

  def buy_fish(name_of_fish)
    @pets[:fishes] << Fish.new(name_of_fish)
  end

  def buy_cat(name_of_cat)
    @pets[:cats] << Cat.new(name_of_cat)
  end

  def buy_dog(name_of_dog)
    @pets[:dogs] << Dog.new(name_of_dog)
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
    @pets.each do |species, animals|
      animals.each do |pet|
        pet.mood = "nervous"
      end
      animals.clear
    end
  end

  def list_pets
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end
end
