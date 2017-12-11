class Owner
  # code goes here
  attr_accessor :owner, :name, :pets

  attr_reader :species
  @@all = []
  @@count = 0

  def initialize(owner)
    @owner = owner
    @species = "human"
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
    @@count += 1
  end

  def self.all
    @@all
  end

  def self.count
    @@count
  end

  def self.reset_all
    @@count = 0
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
    @pets[:dogs].collect do |dog|
      dog.mood="happy"
    end
  end

  def play_with_cats
    @pets[:cats].collect do |cat|
      cat.mood="happy"
    end
  end

  def feed_fish
    @pets[:fishes].collect do |fish|
      fish.mood="happy"
    end
  end

  def sell_pets
    @pets.each do |species, pets|
      pets.collect do |pet|
        pet.mood="nervous"
      end
    end
    @pets = []
  end

  def list_pets
    message = "I have #{@pets[:fishes].size} fish, #{@pets[:dogs].size} dog(s), and #{@pets[:cats].size} cat(s)."
    
  end
end
