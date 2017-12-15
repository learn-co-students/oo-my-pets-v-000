class Owner
  attr_accessor :name, :pets
  attr_reader :species

  @@all = []

  def initialize(species)
    @pets = {fishes: [], cats: [], dogs: []}
    @species = species
    @@all << self
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
    pets[:dogs].map do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    pets[:cats].map do |cat|
    cat.mood = "happy"
    end
  end

  def feed_fish
    pets[:fishes].map do |fish|
    fish.mood = "happy"
    end
  end

  def sell_pets
    @pets.each do |species, pets|
      pets.collect do |sold_pet|
        sold_pet.mood = "nervous"
      end
    end
      @pets = []
  end

  def list_pets
     "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end
end
