require 'pry'
class Owner
  attr_accessor :name
  attr_reader :species
  @@all = []
  @@count = 0

  def initialize(name)
    @name = name
    @species = "human"
    @pets = {
      :fishes => [],
      :dogs => [],
      :cats => []
    }
    @@all << self
    @@count += 1
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all = []
    @@count = 0
  end

  def self.count
    @@count
  end

  def say_species
    return "I am a #{species}."
  end

  def pets
    @pets
  end

  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
  end

  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
  end

  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
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

  def pets=(hash)
    @pets = hash
  end

  def sell_pets
    @pets.each do |kind, pets|
      pets.each do |pet|
          pet.mood = "nervous"
      end
    end
    @pets = {}
  end

  def list_pets
    @num_of_cats = @pets[:cats].length
    @num_of_dogs = @pets[:dogs].length
    @num_of_fish = @pets[:fishes].length
    return "I have #{@num_of_fish} fish, #{@num_of_dogs} dog(s), and #{@num_of_cats} cat(s)."
  end
end
