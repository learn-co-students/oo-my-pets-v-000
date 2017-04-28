class Owner
  attr_accessor :name, :pets
  attr_reader :species

  @@all = []
  @@count = 0

  def initialize(species)
    @@all << self
    @@count += 1
    @species = species
    @pets = { fishes: [], cats: [], dogs: [] }
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
    @@count = 0
  end

  def self.count
    @@count
  end

  def say_species
    "I am a human."
  end

  def buy_fish(name)
    new_fish = Fish.new(name)
    @pets[:fishes] << new_fish
    new_fish
  end

  def buy_cat(name)
    new_cat = Cat.new(name)
    @pets[:cats] << new_cat
    new_cat
  end

  def buy_dog(name)
    new_dog = Dog.new(name)
    @pets[:dogs] << new_dog
    new_dog
  end

  def walk_dogs
    @pets[:dogs].each { |d| d.mood = "happy" }
  end

  def play_with_cats
    @pets[:cats].each { |c| c.mood = "happy" }
  end

  def feed_fish
    @pets[:fishes].each { |f| f.mood = "happy" }
  end

  def sell_pets
    @pets.collect do |species, array|
      array.each { |animal| animal.mood = "nervous" }
      array.clear
    end
  end

  def list_pets
    cats = @pets[:cats].count
    dogs = @pets[:dogs].count
    fishes = @pets[:fishes].count

    "I have #{fishes} fish, #{dogs} dog(s), and #{cats} cat(s)."
  end

end
