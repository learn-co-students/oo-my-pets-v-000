class Owner
  attr_accessor :name, :pets
  attr_reader :species

  @@all = []

  def initialize(owner)
    @owner = owner
    @species = "human"
    @pets = {fishes: [], dogs: [], cats: []}
    @@all << self
  end

  # Class Methods

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all.clear
  end

  # Instnace Methods

  def say_species
    "I am a human."
  end

  def buy_fish(fish)
    @pets[:fishes] << Fish.new(fish)
  end

  def buy_cat(cat)
    @pets[:cats] << Cat.new(cat)
  end

  def buy_dog(dog)
    @pets[:dogs] << Dog.new(dog)
  end

  def walk_dogs
    @pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets # NOOOOO!!! :(
    @pets.each_value do |v|
      v.each do |pet|
        pet.mood = "nervous"
      end
      v.clear
    end
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end

end
