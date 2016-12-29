class Owner

  attr_accessor :pets, :name
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
    @@all.clear
  end

  def self.count
    @@all.size
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
  end

  def walk_dogs
    dogs = @pets[:dogs]
    dogs.each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    cats = @pets[:cats]
    cats.each do |cat|
      cat.mood = "happy"
    end
  end


  def feed_fish
    fish = @pets[:fishes]
    fish.each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    pets.each do |species, pet|
      pet.each do |pets|
        pets.mood = "nervous"
      end
    end
    pets.clear
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end


end
