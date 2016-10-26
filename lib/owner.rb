class Owner
  attr_reader :species
  attr_accessor :name, :pets

  @@all = []

  def initialize(species)
    @species = species
    @@all << self
    @pets = {
      fishes: [],
      dogs: [],
      cats: []
    }
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
    "I am a #{self.species}."
  end

  def buy_fish(name)
    # shoud create an instance of Fish with the right name
    fish = Fish.new(name)
    # should set the owner of the fish to the instance of owner
    fish.owner = self
    # should add the fish to the @pets hash fish key
    @pets[:fishes] << fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    cat.owner = self
    @pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    dog.owner = self
    @pets[:dogs] << dog
  end

  def walk_dogs
    # should select all dogs of the owner
    dogs = @pets[:dogs]
    # should set them all their mood to "happy"
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
    fishes = @pets[:fishes]
    fishes.each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    self.pets.each do |type, pets|
      pets.each do |pet|
        pet.mood = "nervous"
      end
    end

    self.pets.each do |type, pets|
      pets.clear
    end
  end

  def list_pets
    "I have #{@pets[:fishes].size} fish, #{@pets[:dogs].size} dog(s), and #{@pets[:cats].size} cat(s)."
  end
end
