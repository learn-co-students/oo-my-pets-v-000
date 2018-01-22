class Owner

  attr_accessor :pets, :name, :all
  attr_reader :species
  @@owners = []
  @@count = 0

  def initialize(name)
    @name = name
    @species = "human"
    @pets = {fishes: [], cats: [], dogs: []}
    @@owners << self
    @@count += 1
  end

  def self.all
    @@owners
  end

  def self.reset_all
    @@owners = []
    @@count = 0
  end

  def self.count
    @@count
  end

  def species
    @species
  end

  def say_species
    "I am a #{self.species}."
  end

  def buy_fish(fish_name)
    @pets[:fishes] << Fish.new(fish_name)
  end

  def buy_cat(cat_name)
    @pets[:cats] << Cat.new(cat_name)
  end

  def buy_dog(dog_name)
    @pets[:dogs] << Dog.new(dog_name)
  end

  # def pets
  #   @pets
  # end

  def walk_dogs
    @pets[:dogs].each { |dog| dog.mood = "happy" }
  end

  def play_with_cats
    @pets[:cats].each { |cat| cat.mood = "happy" }
  end

  def feed_fish
    @pets[:fishes].each { |fish| fish.mood = "happy" }
  end

  def sell_pets
    @pets.each do |species, pets|
        pets.each do |pet|
          pet.mood = "nervous"
        end
    end

    # @pets[:dogs].each { |dog| dog.mood = "nervous" }
    # @pets[:cats].each { |cat| cat.mood = "nervous" }
    # @pets[:fishes].each { |fish| fish.mood = "nervous" }

    @pets = {fishes: [], cats: [], dogs: []}
  end

  def fishes
      @pets[:fishes]
  end

  def cats
      @pets[:cats]
  end

  def dogs
      @pets[:dogs]
  end

  def list_pets
    "I have #{fishes.count} fish, #{dogs.count} dog(s), and #{cats.count} cat(s)."
  end
end
