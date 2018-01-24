require 'pry'

class Owner
  attr_accessor :pets, :name

  attr_reader :species

  @@all = []

  def initialize(species)
    @species = species
    @@all << self
    @pets = {
      :fishes => [],
      :cats => [],
      :dogs => []
    }
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all.clear
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(fish)
    fish = Fish.new(fish)
    @pets[:fishes] << fish
  end

  def buy_cat(cat)
    cat = Cat.new(cat)
    @pets[:cats] << cat
  end

  def buy_dog(dog)
    dog = Dog.new(dog)
    @pets[:dogs] << dog
  end

  def walk_dogs
    @pets[:dogs].each {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].each {|cat| cat.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].each {|fish| fish.mood = "happy"}
  end

  def sell_pets
    @pets.each do |species, pets|
      pets.each do |pet|
        pet.mood = "nervous"
      end
    end
    @pets.each do |species, pets|
      pets.clear
    end
  end

  def list_pets
    fish = @pets[:fishes].count
    dogs = @pets[:dogs].count
    cats = @pets[:cats].count

    "I have #{fish} fish, #{dogs} dog(s), and #{cats} cat(s)."
  end
  
end
